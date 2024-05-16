// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.25;

struct AddressInfo {
    string label;
    string details;
    uint32 lat;
    uint32 long;
}
struct RelevantDetails {
    AddressInfo addressInfo;
    string[] imgs;
    string note;
}

struct AttendanceData {
    uint32 date; // Format: YYYYMMDD
    uint32 checkInTime; // Time in seconds MIN_TIME -> MAX_TIME
    uint32 checkOutTime; // Time in seconds MIN_TIME -> MAX_TIME
    RelevantDetails releventDetails;
}

struct History {
    uint32 checkInTime;
    uint32 checkOutTime;
    string reason;
}

/**
 * @title AttendanceSmartContract
 * @dev A contract for managing employee attendance and relevant details
 */
contract AttendanceContract {

    address private owner;

    event OwnerSet(address indexed oldOwner, address indexed newOwner);

    modifier isOwner() {
        require(msg.sender == owner, "Caller is not owner");
        _;
    }

    // Time in seconds
    uint32 constant MAX_TIME = 24 * 60 * 60 - 1; // 23:59:59
    uint32 constant MIN_TIME = 0; // 00:00:00

    uint256 private constant RESOLUTION = 1000000000000000;

    uint32 constant MAX_DATE = 99990101; // 9999/01/01
    uint32 constant MIN_DATE = 10101; // 0001/01/01

    // Default reason for check in & check out action
    string constant REASON_CHECK_IN = "REASON_CHECK_IN";
    string constant REASON_CHECK_OUT = "REASON_CHECK_OUT";

    // Mapping employee ID to their attendance records
    mapping(uint256 => AttendanceData[]) private attendances;
    mapping(uint256 => mapping(uint32 => uint256)) private mappingDateToIndex;

    // Mapping employee IDs & index of attendance records to their attendance records changes
    mapping(uint256 => mapping(uint256 => History[])) private histories;

    /**
     * @dev Set contract deployer as owner
     */
    constructor() {
        owner = msg.sender; // 'msg.sender' is sender of current call, contract deployer for a constructor
        emit OwnerSet(address(0), owner);
    }

    /**
     * @dev Change owner
     * @param newOwner address of new owner
     */
    function changeOwner(address newOwner) public isOwner {
        emit OwnerSet(owner, newOwner);
        owner = newOwner;
    }

    /**
     * @dev Return owner address
     * @return address of owner
     */
    function getOwner() external view returns (address) {
        return owner;
    }

    /**
     * @dev Check in function for employees
     * @param employeeID The ID of the employee
     * @param date The date of the attendance record
     * @param checkInTime The check-in time
     * @param relevantDetails Relevant details associated with the attendance
     */
    function checkin(
        uint256 employeeID,
        uint32 date,
        uint32 checkInTime,
        RelevantDetails memory relevantDetails
    ) public isOwner {
        require(date <= MAX_DATE, "Date must be less or equal than 9999/01/01");
        require(date >= MIN_DATE, "Date must be large or equal than 1/01/01");

        require(
            checkInTime <= MAX_TIME,
            "CheckIn time must be less or equal to 24h(24*60*60)"
        );
        require(
            checkInTime >= MIN_TIME,
            "CheckIn date must be large or equal to 0"
        );

        require(
            mappingDateToIndex[employeeID][date] == 0,
            "Attendance has already checked int"
        );

        AttendanceData memory newRecord = AttendanceData(
            date,
            checkInTime,
            0,
            relevantDetails
        );
        attendances[employeeID].push(newRecord);

        mappingDateToIndex[employeeID][date] = attendances[employeeID].length;

        addHistories(
            employeeID,
            attendances[employeeID].length - 1,
            checkInTime,
            0,
            REASON_CHECK_OUT
        );
    }

    /**
     * @dev Check out function for employees
     * @param employeeID The ID of the employee
     * @param date The date of the attendance record
     * @param checkOutTime The check-out time
     */
    function checkout(
        uint256 employeeID,
        uint32 date,
        uint32 checkOutTime
    ) public isOwner {
        require(date <= MAX_DATE, "Date must be less or equal than 9999/01/01");
        require(date >= MIN_DATE, "Date must be large or equal than 1/01/01");

        require(
            checkOutTime <= MAX_TIME,
            "Checkout time must be less or equal to 24h(24*60*60)"
        );
        require(
            checkOutTime >= MIN_TIME,
            "Checkout date must be large or equal to 0"
        );

        require(
            mappingDateToIndex[employeeID][date] != 0,
            "Attendance of date does not exist"
        );

        uint256 index = mappingDateToIndex[employeeID][date] - 1;

        require(
            checkOutTime > attendances[employeeID][index].checkInTime,
            "Checkout time must be large than checkin time"
        );
        require(
            attendances[employeeID][index].checkOutTime == 0,
            "Attendance has already checked out"
        );

        attendances[employeeID][index].checkOutTime = checkOutTime;

        addHistories(
            employeeID,
            index,
            attendances[employeeID][index].checkInTime,
            checkOutTime,
            REASON_CHECK_OUT
        );
    }

    /**
     * @dev Get all attendance records for a specific employee
     * @param employeeID The ID of the employee
     * @return An array of all attendance records for the employee
     */
    function getAllAttendanceByEmployeeID(
        uint256 employeeID
    ) external view returns (AttendanceData[] memory) {
        AttendanceData[] memory allRecords = attendances[employeeID];
        return allRecords;
    }

    /**
     * @dev Get attendance records within a specific date range for a specific employee
     * @param employeeID The ID of the employee
     * @param startDate The start date of the range
     * @param endDate The end date of the range
     * @return The number of attendance records found and an array of those records
     */
    function getAttendanceByRangeDate(
        uint256 employeeID,
        uint32 startDate,
        uint32 endDate
    ) external view returns (uint, AttendanceData[] memory) {
        require(
            startDate >= MIN_DATE,
            "Start Date must be large or equal than 1/01/01"
        );
        require(
            endDate <= MAX_DATE,
            "End Date must be less or equal than 9999/01/01"
        );
        require(
            startDate <= endDate,
            "Start date must be before or equal to end date"
        );

        AttendanceData[] memory allRecords = attendances[employeeID];

        // TODO: Optimize the fixed length of arrays
        AttendanceData[] memory attendanceByRangeDate = new AttendanceData[](
            allRecords.length
        );

        uint count = 0;
        for (uint256 i = 0; i < allRecords.length; i++) {
            if (
                allRecords[i].date >= startDate && allRecords[i].date <= endDate
            ) {
                attendanceByRangeDate[count] = allRecords[i];
                count++;
            }
        }
        return (count, attendanceByRangeDate);
    }

    /**
     * @dev Update an existing attendance record with new information
     * @param employeeID The ID of the employee
     * @param date The date of the attendance record to be updated
     * @param checkInTime The new check-in time
     * @param checkOutTime The new check-out time
     * @param reason The reason for the update
     */
    function updateAttendanceRecord(
        uint256 employeeID,
        uint32 date,
        uint32 checkInTime,
        uint32 checkOutTime,
        string memory reason
    ) public isOwner {
        require(date <= MAX_DATE, "Date must be less or equal than 9999/01/01");
        require(date >= MIN_DATE, "Date must be large or equal than 1/01/01");

        require(
            checkOutTime <= MAX_TIME,
            "Checkout time must be less or equal to 24h(24*60*60)"
        );
        require(
            checkInTime >= MIN_TIME,
            "CheckInt time must be large or equal to 0"
        );
        require(
            checkInTime <= checkOutTime,
            "CheckInt time must be less to Checkout time"
        );

        require(
            mappingDateToIndex[employeeID][date] != 0,
            "Attendance of date does not exist"
        );

        uint256 index = mappingDateToIndex[employeeID][date] - 1;

        attendances[employeeID][index].date = date;
        attendances[employeeID][index].checkInTime = checkInTime;
        attendances[employeeID][index].checkOutTime = checkOutTime;

        addHistories(employeeID, index, checkInTime, checkOutTime, reason);
    }

    /**
     * @dev Get details of a specific attendance record including its history
     * @param employeeID The ID of the employee
     * @param index The index of the attendance record
     * @return The attendance record and its history
     */
    function getAttendanceDetail(
        uint256 employeeID,
        uint256 index
    ) external view returns (AttendanceData memory, History[] memory) {
        require(
            attendances[employeeID].length > 0,
            "Employee ID does not exist in attendances"
        );

        AttendanceData memory attendance = attendances[employeeID][index];
        History[] memory historyyRecords = getHistories(employeeID, index);

        return (attendance, historyyRecords);
    }

    /**
     * @dev Add a history record for an attendance record
     * @param employeeID The ID of the employee
     * @param index The index of the attendance record
     * @param checkInTime The check-in time
     * @param checkoutOutTime The check-out time
     * @param reason The reason for the history record
     */
    function addHistories(
        uint256 employeeID,
        uint256 index,
        uint32 checkInTime,
        uint32 checkoutOutTime,
        string memory reason
    ) private {
        History memory history = History(checkInTime, checkoutOutTime, reason);
        histories[employeeID][index].push(history);
    }

    /**
     * @dev Get the history records for an attendance record
     * @param employeeID The ID of the employee
     * @param index The index of the attendance record
     * @return An array of history records
     */
    function getHistories(
        uint256 employeeID,
        uint256 index
    ) internal view returns (History[] memory) {
        return histories[employeeID][index];
    }
}
