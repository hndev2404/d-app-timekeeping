/// @use-src 0:"contract/attendance.sol"
object "AttendanceContract_692" {
    code {
        {
            /// @src 0:682:10606  "contract AttendanceContract {..."
            let _1 := memoryguard(0x80)
            mstore(64, _1)
            if callvalue() { revert(0, 0) }
            sstore(/** @src 0:1841:1859  "owner = msg.sender" */ 0x00, /** @src 0:682:10606  "contract AttendanceContract {..." */ or(and(sload(/** @src 0:1841:1859  "owner = msg.sender" */ 0x00), /** @src 0:682:10606  "contract AttendanceContract {..." */ not(sub(shl(160, 1), 1))), /** @src 0:1849:1859  "msg.sender" */ caller()))
            /// @src 0:1953:1980  "OwnerSet(address(0), owner)"
            log3(/** @src 0:1841:1859  "owner = msg.sender" */ 0x00, 0x00, /** @src 0:1953:1980  "OwnerSet(address(0), owner)" */ 0x342827c97908e5e2f71151c08502a66d44b6f758e3ac2f1de95f02eb95f0a735, /** @src 0:1841:1859  "owner = msg.sender" */ 0x00, /** @src 0:1849:1859  "msg.sender" */ caller())
            /// @src 0:682:10606  "contract AttendanceContract {..."
            let _2 := datasize("AttendanceContract_692_deployed")
            codecopy(_1, dataoffset("AttendanceContract_692_deployed"), _2)
            return(_1, _2)
        }
    }
    /// @use-src 0:"contract/attendance.sol"
    object "AttendanceContract_692_deployed" {
        code {
            {
                /// @src 0:682:10606  "contract AttendanceContract {..."
                mstore(64, memoryguard(0x80))
                if iszero(lt(calldatasize(), 4))
                {
                    switch shr(224, calldataload(0))
                    case 0x132a2ba2 {
                        if callvalue() { revert(0, 0) }
                        let _1 := 32
                        if slt(add(calldatasize(), not(3)), _1) { revert(0, 0) }
                        mstore(0, calldataload(4))
                        let _2 := 1
                        mstore(_1, 1)
                        let dataSlot := keccak256(0, 64)
                        let length := sload(dataSlot)
                        let _3 := array_allocation_size_array_string_dyn(length)
                        let memPtr := mload(64)
                        finalize_allocation(memPtr, _3)
                        mstore(memPtr, length)
                        let mpos := memPtr
                        mpos := add(memPtr, _1)
                        mstore(0, dataSlot)
                        let spos := keccak256(0, _1)
                        let i := 0
                        for { } lt(i, length) { i := add(i, _2) }
                        {
                            mstore(mpos, read_from_storage_reference_type_struct_AttendanceData(spos))
                            mpos := add(mpos, _1)
                            spos := add(spos, 6)
                        }
                        let memPos := mload(64)
                        mstore(memPos, _1)
                        return(memPos, sub(abi_encode_array_struct_AttendanceData_dyn(memPtr, add(memPos, _1)), memPos))
                    }
                    case 0x1d848671 {
                        if callvalue() { revert(0, 0) }
                        let _4 := not(3)
                        if slt(add(calldatasize(), _4), 128) { revert(0, 0) }
                        let value1 := abi_decode_uint32_28923()
                        let value2 := abi_decode_uint32_28924()
                        let offset := calldataload(100)
                        if gt(offset, 0xffffffffffffffff) { revert(0, 0) }
                        if slt(add(sub(calldatasize(), offset), _4), 96) { revert(0, 0) }
                        let memPtr_1 := mload(64)
                        finalize_allocation_28925(memPtr_1)
                        let offset_1 := calldataload(add(4, offset))
                        if gt(offset_1, 0xffffffffffffffff) { revert(0, 0) }
                        let _5 := add(offset, offset_1)
                        if slt(add(sub(calldatasize(), _5), _4), 128) { revert(0, 0) }
                        let memPtr_2 := mload(64)
                        finalize_allocation_28926(memPtr_2)
                        let offset_2 := calldataload(add(_5, 4))
                        if gt(offset_2, 0xffffffffffffffff) { revert(0, 0) }
                        mstore(memPtr_2, abi_decode_string(add(add(_5, offset_2), 4), calldatasize()))
                        let offset_3 := calldataload(add(_5, 36))
                        if gt(offset_3, 0xffffffffffffffff) { revert(0, 0) }
                        let _6 := abi_decode_string(add(add(_5, offset_3), 4), calldatasize())
                        mstore(add(memPtr_2, 32), _6)
                        mstore(add(memPtr_2, 64), abi_decode_uint32(add(_5, 68)))
                        mstore(add(memPtr_2, 96), abi_decode_uint32(add(_5, 100)))
                        mstore(memPtr_1, memPtr_2)
                        let offset_4 := calldataload(add(offset, 36))
                        if gt(offset_4, 0xffffffffffffffff) { revert(0, 0) }
                        let _7 := add(offset, offset_4)
                        if iszero(slt(add(_7, 35), calldatasize())) { revert(0, 0) }
                        let _8 := calldataload(add(_7, 4))
                        let _9 := array_allocation_size_array_string_dyn(_8)
                        let memPtr_3 := mload(64)
                        finalize_allocation(memPtr_3, _9)
                        let dst := memPtr_3
                        mstore(memPtr_3, _8)
                        dst := add(memPtr_3, 32)
                        let srcEnd := add(add(_7, shl(5, _8)), 36)
                        if gt(srcEnd, calldatasize()) { revert(0, 0) }
                        let src := add(_7, 36)
                        for { } lt(src, srcEnd) { src := add(src, 32) }
                        {
                            let innerOffset := calldataload(src)
                            if gt(innerOffset, 0xffffffffffffffff) { revert(0, 0) }
                            mstore(dst, abi_decode_string(add(add(_7, innerOffset), 36), calldatasize()))
                            dst := add(dst, 32)
                        }
                        mstore(add(memPtr_1, 32), memPtr_3)
                        let offset_5 := calldataload(add(offset, 68))
                        if gt(offset_5, 0xffffffffffffffff) { revert(0, 0) }
                        mstore(add(memPtr_1, 64), abi_decode_string(add(add(offset, offset_5), 4), calldatasize()))
                        /// @src 0:847:898  "require(msg.sender == owner, \"Caller is not owner\")"
                        require_helper_stringliteral_2d10(/** @src 0:855:874  "msg.sender == owner" */ eq(/** @src 0:855:865  "msg.sender" */ caller(), /** @src 0:682:10606  "contract AttendanceContract {..." */ and(sload(0), sub(shl(160, 1), 1))))
                        /// @src 0:2835:2906  "require(date <= MAX_DATE, \"Date must be less or equal than 9999/01/01\")"
                        require_helper_stringliteral_7a37(/** @src 0:2843:2859  "date <= MAX_DATE" */ iszero(gt(/** @src 0:682:10606  "contract AttendanceContract {..." */ and(/** @src 0:2843:2859  "date <= MAX_DATE" */ value1, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0xffffffff), /** @src 0:1141:1149  "99990101" */ 0x05f5ba55)))
                        /// @src 0:2916:2985  "require(date >= MIN_DATE, \"Date must be large or equal than 1/01/01\")"
                        require_helper_stringliteral_ace2(/** @src 0:2924:2940  "date >= MIN_DATE" */ iszero(lt(/** @src 0:682:10606  "contract AttendanceContract {..." */ and(/** @src 0:2843:2859  "date <= MAX_DATE" */ value1, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0xffffffff), /** @src 0:1196:1201  "10101" */ 0x2775)))
                        /// @src 0:972:988  "24 * 60 * 60 - 1"
                        if /** @src 0:3017:3040  "checkInTime <= MAX_TIME" */ gt(/** @src 0:682:10606  "contract AttendanceContract {..." */ and(/** @src 0:3017:3040  "checkInTime <= MAX_TIME" */ value2, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0xffffffff), /** @src 0:972:988  "24 * 60 * 60 - 1" */ 0x01517f)
                        {
                            let memPtr_4 := /** @src 0:682:10606  "contract AttendanceContract {..." */ mload(64)
                            /// @src 0:972:988  "24 * 60 * 60 - 1"
                            mstore(memPtr_4, shl(229, 4594637))
                            mstore(add(memPtr_4, /** @src 0:682:10606  "contract AttendanceContract {..." */ 4), 32)
                            mstore(/** @src 0:972:988  "24 * 60 * 60 - 1" */ add(memPtr_4, /** @src 0:682:10606  "contract AttendanceContract {..." */ 36), /** @src 0:972:988  "24 * 60 * 60 - 1" */ 51)
                            mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ add(/** @src 0:972:988  "24 * 60 * 60 - 1" */ memPtr_4, /** @src 0:682:10606  "contract AttendanceContract {..." */ 68), /** @src 0:972:988  "24 * 60 * 60 - 1" */ "CheckIn time must be less or equ")
                            mstore(add(memPtr_4, /** @src 0:682:10606  "contract AttendanceContract {..." */ 100), /** @src 0:972:988  "24 * 60 * 60 - 1" */ "al to 24h(24*60*60)")
                            revert(memPtr_4, 132)
                        }
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        mstore(0, calldataload(4))
                        mstore(32, /** @src 0:3269:3287  "mappingDateToIndex" */ 0x02)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        let _10 := keccak256(0, 64)
                        /// @src 0:1033:1034  "0"
                        mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, and(/** @src 0:2843:2859  "date <= MAX_DATE" */ value1, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0xffffffff))
                        /// @src 0:1033:1034  "0"
                        mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ 32, /** @src 0:1033:1034  "0" */ _10)
                        if iszero(/** @src 0:3269:3310  "mappingDateToIndex[employeeID][date] == 0" */ iszero(/** @src 0:1033:1034  "0" */ sload(keccak256(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, 64))))
                        /// @src 0:1033:1034  "0"
                        {
                            let memPtr_5 := /** @src 0:682:10606  "contract AttendanceContract {..." */ mload(64)
                            /// @src 0:1033:1034  "0"
                            mstore(memPtr_5, /** @src 0:972:988  "24 * 60 * 60 - 1" */ shl(229, 4594637))
                            /// @src 0:1033:1034  "0"
                            mstore(add(memPtr_5, /** @src 0:682:10606  "contract AttendanceContract {..." */ 4), 32)
                            mstore(/** @src 0:1033:1034  "0" */ add(memPtr_5, /** @src 0:682:10606  "contract AttendanceContract {..." */ 36), /** @src 0:1033:1034  "0" */ 34)
                            mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ add(/** @src 0:1033:1034  "0" */ memPtr_5, /** @src 0:682:10606  "contract AttendanceContract {..." */ 68), /** @src 0:1033:1034  "0" */ "Attendance has already checked i")
                            mstore(add(memPtr_5, /** @src 0:682:10606  "contract AttendanceContract {..." */ 100), /** @src 0:1033:1034  "0" */ "nt")
                            revert(memPtr_5, 132)
                        }
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        let memPtr_6 := mload(64)
                        finalize_allocation_28926(memPtr_6)
                        mstore(memPtr_6, and(/** @src 0:2843:2859  "date <= MAX_DATE" */ value1, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0xffffffff))
                        mstore(/** @src 0:3415:3526  "AttendanceData(..." */ add(memPtr_6, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32), and(/** @src 0:3017:3040  "checkInTime <= MAX_TIME" */ value2, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0xffffffff))
                        mstore(/** @src 0:3415:3526  "AttendanceData(..." */ add(memPtr_6, /** @src 0:682:10606  "contract AttendanceContract {..." */ 64), 0)
                        mstore(/** @src 0:3415:3526  "AttendanceData(..." */ add(memPtr_6, /** @src 0:682:10606  "contract AttendanceContract {..." */ 96), memPtr_1)
                        mstore(0, calldataload(4))
                        mstore(32, 1)
                        let dataSlot_1 := keccak256(0, 64)
                        /// @src 0:1033:1034  "0"
                        let oldLen := sload(dataSlot_1)
                        if iszero(lt(oldLen, 18446744073709551616))
                        {
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(0, shl(224, 0x4e487b71))
                            mstore(4, 0x41)
                            revert(0, 36)
                        }
                        /// @src 0:1033:1034  "0"
                        sstore(dataSlot_1, add(oldLen, /** @src 0:682:10606  "contract AttendanceContract {..." */ 1))
                        /// @src 0:1033:1034  "0"
                        let slot, offset_6 := storage_array_index_access_struct_AttendanceData__dyn_ptr(dataSlot_1, oldLen)
                        if offset_6
                        {
                            mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, shl(224, 0x4e487b71))
                            /// @src 0:1033:1034  "0"
                            mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ 4, 0)
                            /// @src 0:1033:1034  "0"
                            revert(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, 36)
                        }
                        let _11 := and(/** @src 0:1033:1034  "0" */ mload(memPtr_6), /** @src 0:682:10606  "contract AttendanceContract {..." */ 0xffffffff)
                        /// @src 0:1033:1034  "0"
                        sstore(slot, or(and(sload(slot), not(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0xffffffff)), _11))
                        /// @src 0:1033:1034  "0"
                        update_storage_value_offsett_uint32_to_t_uint32(slot, /** @src 0:682:10606  "contract AttendanceContract {..." */ and(/** @src 0:1033:1034  "0" */ mload(/** @src 0:3415:3526  "AttendanceData(..." */ add(memPtr_6, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32)), 0xffffffff))
                        /// @src 0:1033:1034  "0"
                        update_storage_value_offsett_uint32_to_uint32(slot, /** @src 0:682:10606  "contract AttendanceContract {..." */ and(/** @src 0:1033:1034  "0" */ mload(/** @src 0:3415:3526  "AttendanceData(..." */ add(memPtr_6, /** @src 0:682:10606  "contract AttendanceContract {..." */ 64)), 0xffffffff))
                        let _12 := mload(/** @src 0:3415:3526  "AttendanceData(..." */ add(memPtr_6, /** @src 0:682:10606  "contract AttendanceContract {..." */ 96))
                        let _13 := mload(/** @src 0:1033:1034  "0" */ _12)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        let _14 := mload(/** @src 0:1033:1034  "0" */ _13)
                        let newLen := /** @src 0:682:10606  "contract AttendanceContract {..." */ mload(/** @src 0:1033:1034  "0" */ _14)
                        if gt(newLen, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0xffffffffffffffff)
                        /// @src 0:1033:1034  "0"
                        {
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(0, shl(224, 0x4e487b71))
                            mstore(4, 0x41)
                            revert(0, 36)
                        }
                        /// @src 0:1033:1034  "0"
                        let _15 := extract_byte_array_length(sload(add(slot, /** @src 0:682:10606  "contract AttendanceContract {..." */ 1)))
                        /// @src 0:1033:1034  "0"
                        if gt(_15, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f)
                        /// @src 0:1033:1034  "0"
                        {
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(0, /** @src 0:1033:1034  "0" */ add(slot, /** @src 0:682:10606  "contract AttendanceContract {..." */ 1))
                            let data := keccak256(0, 32)
                            /// @src 0:1033:1034  "0"
                            let deleteStart := add(data, shr(/** @src 0:682:10606  "contract AttendanceContract {..." */ 5, /** @src 0:1033:1034  "0" */ add(newLen, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f)))
                            /// @src 0:1033:1034  "0"
                            if lt(newLen, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32)
                            /// @src 0:1033:1034  "0"
                            { deleteStart := data }
                            clear_storage_range_bytes1(deleteStart, add(data, shr(/** @src 0:682:10606  "contract AttendanceContract {..." */ 5, /** @src 0:1033:1034  "0" */ add(_15, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f))))
                        }
                        /// @src 0:1033:1034  "0"
                        let srcOffset := /** @src 0:682:10606  "contract AttendanceContract {..." */ 0
                        /// @src 0:1033:1034  "0"
                        srcOffset := /** @src 0:682:10606  "contract AttendanceContract {..." */ 32
                        /// @src 0:1033:1034  "0"
                        switch gt(newLen, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f)
                        case /** @src 0:1033:1034  "0" */ 1 {
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(0, /** @src 0:1033:1034  "0" */ add(slot, /** @src 0:682:10606  "contract AttendanceContract {..." */ 1))
                            /// @src 0:1033:1034  "0"
                            let dstPtr := /** @src 0:682:10606  "contract AttendanceContract {..." */ keccak256(0, 32)
                            /// @src 0:1033:1034  "0"
                            let i_1 := /** @src 0:682:10606  "contract AttendanceContract {..." */ 0
                            /// @src 0:1033:1034  "0"
                            for { }
                            lt(i_1, and(newLen, not(31)))
                            {
                                i_1 := add(i_1, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32)
                            }
                            /// @src 0:1033:1034  "0"
                            {
                                sstore(dstPtr, mload(add(_14, srcOffset)))
                                dstPtr := add(dstPtr, /** @src 0:682:10606  "contract AttendanceContract {..." */ 1)
                                /// @src 0:1033:1034  "0"
                                srcOffset := add(srcOffset, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32)
                            }
                            /// @src 0:1033:1034  "0"
                            if lt(and(newLen, not(31)), newLen)
                            {
                                let lastValue := mload(add(_14, srcOffset))
                                sstore(dstPtr, and(lastValue, not(shr(and(shl(3, newLen), 248), not(0)))))
                            }
                            sstore(add(slot, /** @src 0:682:10606  "contract AttendanceContract {..." */ 1), /** @src 0:1033:1034  "0" */ add(shl(/** @src 0:682:10606  "contract AttendanceContract {..." */ 1, /** @src 0:1033:1034  "0" */ newLen), /** @src 0:682:10606  "contract AttendanceContract {..." */ 1))
                        }
                        default /// @src 0:1033:1034  "0"
                        {
                            let value := /** @src 0:682:10606  "contract AttendanceContract {..." */ 0
                            /// @src 0:1033:1034  "0"
                            if newLen
                            {
                                value := mload(add(_14, srcOffset))
                            }
                            sstore(add(slot, /** @src 0:682:10606  "contract AttendanceContract {..." */ 1), /** @src 0:1033:1034  "0" */ extract_used_part_and_set_length_of_short_byte_array(value, newLen))
                        }
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        let _16 := mload(/** @src 0:1033:1034  "0" */ add(_13, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32))
                        /// @src 0:1033:1034  "0"
                        let newLen_1 := /** @src 0:682:10606  "contract AttendanceContract {..." */ mload(/** @src 0:1033:1034  "0" */ _16)
                        if gt(newLen_1, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0xffffffffffffffff)
                        /// @src 0:1033:1034  "0"
                        {
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(0, shl(224, 0x4e487b71))
                            mstore(4, 0x41)
                            revert(0, 36)
                        }
                        /// @src 0:1033:1034  "0"
                        let _17 := extract_byte_array_length(sload(add(slot, /** @src 0:3269:3287  "mappingDateToIndex" */ 0x02)))
                        /// @src 0:1033:1034  "0"
                        if gt(_17, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f)
                        /// @src 0:1033:1034  "0"
                        {
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(0, /** @src 0:1033:1034  "0" */ add(slot, /** @src 0:3269:3287  "mappingDateToIndex" */ 0x02))
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            let data_1 := keccak256(0, 32)
                            /// @src 0:1033:1034  "0"
                            let deleteStart_1 := add(data_1, shr(/** @src 0:682:10606  "contract AttendanceContract {..." */ 5, /** @src 0:1033:1034  "0" */ add(newLen_1, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f)))
                            /// @src 0:1033:1034  "0"
                            if lt(newLen_1, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32)
                            /// @src 0:1033:1034  "0"
                            { deleteStart_1 := data_1 }
                            clear_storage_range_bytes1(deleteStart_1, add(data_1, shr(/** @src 0:682:10606  "contract AttendanceContract {..." */ 5, /** @src 0:1033:1034  "0" */ add(_17, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f))))
                        }
                        /// @src 0:1033:1034  "0"
                        let srcOffset_1 := /** @src 0:682:10606  "contract AttendanceContract {..." */ 0
                        /// @src 0:1033:1034  "0"
                        srcOffset_1 := /** @src 0:682:10606  "contract AttendanceContract {..." */ 32
                        /// @src 0:1033:1034  "0"
                        switch gt(newLen_1, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f)
                        case /** @src 0:1033:1034  "0" */ 1 {
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(0, /** @src 0:1033:1034  "0" */ add(slot, /** @src 0:3269:3287  "mappingDateToIndex" */ 0x02))
                            /// @src 0:1033:1034  "0"
                            let dstPtr_1 := /** @src 0:682:10606  "contract AttendanceContract {..." */ keccak256(0, 32)
                            /// @src 0:1033:1034  "0"
                            let i_2 := /** @src 0:682:10606  "contract AttendanceContract {..." */ 0
                            /// @src 0:1033:1034  "0"
                            for { }
                            lt(i_2, and(newLen_1, not(31)))
                            {
                                i_2 := add(i_2, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32)
                            }
                            /// @src 0:1033:1034  "0"
                            {
                                sstore(dstPtr_1, mload(add(_16, srcOffset_1)))
                                dstPtr_1 := add(dstPtr_1, /** @src 0:682:10606  "contract AttendanceContract {..." */ 1)
                                /// @src 0:1033:1034  "0"
                                srcOffset_1 := add(srcOffset_1, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32)
                            }
                            /// @src 0:1033:1034  "0"
                            if lt(and(newLen_1, not(31)), newLen_1)
                            {
                                let lastValue_1 := mload(add(_16, srcOffset_1))
                                sstore(dstPtr_1, and(lastValue_1, not(shr(and(shl(3, newLen_1), 248), not(0)))))
                            }
                            sstore(add(slot, /** @src 0:3269:3287  "mappingDateToIndex" */ 0x02), /** @src 0:1033:1034  "0" */ add(shl(/** @src 0:682:10606  "contract AttendanceContract {..." */ 1, /** @src 0:1033:1034  "0" */ newLen_1), /** @src 0:682:10606  "contract AttendanceContract {..." */ 1))
                        }
                        default /// @src 0:1033:1034  "0"
                        {
                            let value_1 := /** @src 0:682:10606  "contract AttendanceContract {..." */ 0
                            /// @src 0:1033:1034  "0"
                            if newLen_1
                            {
                                value_1 := mload(add(_16, srcOffset_1))
                            }
                            sstore(add(slot, /** @src 0:3269:3287  "mappingDateToIndex" */ 0x02), /** @src 0:1033:1034  "0" */ extract_used_part_and_set_length_of_short_byte_array(value_1, newLen_1))
                        }
                        let memberSlot := add(slot, 3)
                        sstore(memberSlot, or(and(sload(memberSlot), not(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0xffffffff)), and(/** @src 0:1033:1034  "0" */ mload(add(_13, /** @src 0:682:10606  "contract AttendanceContract {..." */ 64)), 0xffffffff)))
                        /// @src 0:1033:1034  "0"
                        update_storage_value_offsett_uint32_to_t_uint32(memberSlot, /** @src 0:682:10606  "contract AttendanceContract {..." */ and(/** @src 0:1033:1034  "0" */ mload(add(_13, /** @src 0:682:10606  "contract AttendanceContract {..." */ 96)), 0xffffffff))
                        let _18 := mload(/** @src 0:1033:1034  "0" */ add(_12, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32))
                        /// @src 0:1033:1034  "0"
                        let length_1 := /** @src 0:682:10606  "contract AttendanceContract {..." */ mload(/** @src 0:1033:1034  "0" */ _18)
                        if gt(length_1, 18446744073709551616)
                        {
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(0, shl(224, 0x4e487b71))
                            mstore(4, 0x41)
                            revert(0, 36)
                        }
                        /// @src 0:1033:1034  "0"
                        let oldLen_1 := /** @src 0:682:10606  "contract AttendanceContract {..." */ sload(/** @src 0:1033:1034  "0" */ add(slot, /** @src 0:682:10606  "contract AttendanceContract {..." */ 4))
                        /// @src 0:1033:1034  "0"
                        sstore(add(slot, /** @src 0:682:10606  "contract AttendanceContract {..." */ 4), /** @src 0:1033:1034  "0" */ length_1)
                        if lt(length_1, oldLen_1)
                        {
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(0, /** @src 0:1033:1034  "0" */ add(slot, /** @src 0:682:10606  "contract AttendanceContract {..." */ 4))
                            let data_2 := keccak256(0, 32)
                            /// @src 0:1033:1034  "0"
                            let start := add(data_2, length_1)
                            for { }
                            lt(start, add(data_2, oldLen_1))
                            {
                                start := add(start, /** @src 0:682:10606  "contract AttendanceContract {..." */ 1)
                            }
                            /// @src 0:1033:1034  "0"
                            {
                                let oldLen_2 := extract_byte_array_length(sload(start))
                                if iszero(iszero(oldLen_2))
                                {
                                    switch gt(oldLen_2, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f)
                                    case /** @src 0:1033:1034  "0" */ 1 {
                                        /// @src 0:682:10606  "contract AttendanceContract {..."
                                        mstore(0, start)
                                        let data_3 := keccak256(0, 32)
                                        /// @src 0:1033:1034  "0"
                                        clear_storage_range_bytes1(add(data_3, /** @src 0:682:10606  "contract AttendanceContract {..." */ 1), /** @src 0:1033:1034  "0" */ add(data_3, shr(/** @src 0:682:10606  "contract AttendanceContract {..." */ 5, /** @src 0:1033:1034  "0" */ add(oldLen_2, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f))))
                                        /// @src 0:1033:1034  "0"
                                        sstore(start, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0)
                                        /// @src 0:1033:1034  "0"
                                        sstore(data_3, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0)
                                    }
                                    default /// @src 0:1033:1034  "0"
                                    {
                                        sstore(start, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0)
                                    }
                                }
                            }
                        }
                        /// @src 0:1033:1034  "0"
                        let srcPtr := /** @src 0:682:10606  "contract AttendanceContract {..." */ add(/** @src 0:1033:1034  "0" */ _18, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32)
                        mstore(0, /** @src 0:1033:1034  "0" */ add(slot, /** @src 0:682:10606  "contract AttendanceContract {..." */ 4))
                        /// @src 0:1033:1034  "0"
                        let elementSlot := /** @src 0:682:10606  "contract AttendanceContract {..." */ keccak256(0, 32)
                        /// @src 0:1033:1034  "0"
                        let i_3 := /** @src 0:682:10606  "contract AttendanceContract {..." */ 0
                        /// @src 0:1033:1034  "0"
                        for { }
                        lt(i_3, length_1)
                        {
                            i_3 := add(i_3, /** @src 0:682:10606  "contract AttendanceContract {..." */ 1)
                        }
                        /// @src 0:1033:1034  "0"
                        {
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            let _19 := mload(/** @src 0:1033:1034  "0" */ srcPtr)
                            let newLen_2 := /** @src 0:682:10606  "contract AttendanceContract {..." */ mload(/** @src 0:1033:1034  "0" */ _19)
                            if gt(newLen_2, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0xffffffffffffffff)
                            /// @src 0:1033:1034  "0"
                            {
                                /// @src 0:682:10606  "contract AttendanceContract {..."
                                mstore(0, shl(224, 0x4e487b71))
                                mstore(4, 0x41)
                                revert(0, 36)
                            }
                            /// @src 0:1033:1034  "0"
                            let _20 := extract_byte_array_length(sload(elementSlot))
                            if gt(_20, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f)
                            /// @src 0:1033:1034  "0"
                            {
                                /// @src 0:682:10606  "contract AttendanceContract {..."
                                mstore(0, elementSlot)
                                let data_4 := keccak256(0, 32)
                                /// @src 0:1033:1034  "0"
                                let deleteStart_2 := add(data_4, shr(/** @src 0:682:10606  "contract AttendanceContract {..." */ 5, /** @src 0:1033:1034  "0" */ add(newLen_2, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f)))
                                /// @src 0:1033:1034  "0"
                                if lt(newLen_2, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32)
                                /// @src 0:1033:1034  "0"
                                { deleteStart_2 := data_4 }
                                clear_storage_range_bytes1(deleteStart_2, add(data_4, shr(/** @src 0:682:10606  "contract AttendanceContract {..." */ 5, /** @src 0:1033:1034  "0" */ add(_20, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f))))
                            }
                            /// @src 0:1033:1034  "0"
                            let srcOffset_2 := /** @src 0:682:10606  "contract AttendanceContract {..." */ 0
                            /// @src 0:1033:1034  "0"
                            srcOffset_2 := /** @src 0:682:10606  "contract AttendanceContract {..." */ 32
                            /// @src 0:1033:1034  "0"
                            switch gt(newLen_2, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f)
                            case /** @src 0:1033:1034  "0" */ 1 {
                                /// @src 0:682:10606  "contract AttendanceContract {..."
                                mstore(0, elementSlot)
                                /// @src 0:1033:1034  "0"
                                let dstPtr_2 := /** @src 0:682:10606  "contract AttendanceContract {..." */ keccak256(0, 32)
                                /// @src 0:1033:1034  "0"
                                let i_4 := /** @src 0:682:10606  "contract AttendanceContract {..." */ 0
                                /// @src 0:1033:1034  "0"
                                for { }
                                lt(i_4, and(newLen_2, not(31)))
                                {
                                    i_4 := add(i_4, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32)
                                }
                                /// @src 0:1033:1034  "0"
                                {
                                    sstore(dstPtr_2, mload(add(_19, srcOffset_2)))
                                    dstPtr_2 := add(dstPtr_2, /** @src 0:682:10606  "contract AttendanceContract {..." */ 1)
                                    /// @src 0:1033:1034  "0"
                                    srcOffset_2 := add(srcOffset_2, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32)
                                }
                                /// @src 0:1033:1034  "0"
                                if lt(and(newLen_2, not(31)), newLen_2)
                                {
                                    let lastValue_2 := mload(add(_19, srcOffset_2))
                                    sstore(dstPtr_2, and(lastValue_2, not(shr(and(shl(3, newLen_2), 248), not(0)))))
                                }
                                sstore(elementSlot, add(shl(/** @src 0:682:10606  "contract AttendanceContract {..." */ 1, /** @src 0:1033:1034  "0" */ newLen_2), /** @src 0:682:10606  "contract AttendanceContract {..." */ 1))
                            }
                            default /// @src 0:1033:1034  "0"
                            {
                                let value_2 := /** @src 0:682:10606  "contract AttendanceContract {..." */ 0
                                /// @src 0:1033:1034  "0"
                                if newLen_2
                                {
                                    value_2 := mload(add(_19, srcOffset_2))
                                }
                                sstore(elementSlot, extract_used_part_and_set_length_of_short_byte_array(value_2, newLen_2))
                            }
                            srcPtr := add(srcPtr, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32)
                            /// @src 0:1033:1034  "0"
                            elementSlot := add(elementSlot, /** @src 0:682:10606  "contract AttendanceContract {..." */ 1)
                        }
                        let _21 := mload(/** @src 0:1033:1034  "0" */ add(_12, /** @src 0:682:10606  "contract AttendanceContract {..." */ 64))
                        /// @src 0:1033:1034  "0"
                        let newLen_3 := /** @src 0:682:10606  "contract AttendanceContract {..." */ mload(/** @src 0:1033:1034  "0" */ _21)
                        if gt(newLen_3, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0xffffffffffffffff)
                        /// @src 0:1033:1034  "0"
                        {
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(0, shl(224, 0x4e487b71))
                            mstore(4, 0x41)
                            revert(0, 36)
                        }
                        /// @src 0:1033:1034  "0"
                        let _22 := extract_byte_array_length(sload(add(slot, /** @src 0:682:10606  "contract AttendanceContract {..." */ 5)))
                        /// @src 0:1033:1034  "0"
                        if gt(_22, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f)
                        /// @src 0:1033:1034  "0"
                        {
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(0, /** @src 0:1033:1034  "0" */ add(slot, /** @src 0:682:10606  "contract AttendanceContract {..." */ 5))
                            let data_5 := keccak256(0, 32)
                            /// @src 0:1033:1034  "0"
                            let deleteStart_3 := add(data_5, shr(/** @src 0:682:10606  "contract AttendanceContract {..." */ 5, /** @src 0:1033:1034  "0" */ add(newLen_3, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f)))
                            /// @src 0:1033:1034  "0"
                            if lt(newLen_3, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32)
                            /// @src 0:1033:1034  "0"
                            { deleteStart_3 := data_5 }
                            clear_storage_range_bytes1(deleteStart_3, add(data_5, shr(/** @src 0:682:10606  "contract AttendanceContract {..." */ 5, /** @src 0:1033:1034  "0" */ add(_22, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f))))
                        }
                        /// @src 0:1033:1034  "0"
                        let srcOffset_3 := /** @src 0:682:10606  "contract AttendanceContract {..." */ 0
                        /// @src 0:1033:1034  "0"
                        srcOffset_3 := /** @src 0:682:10606  "contract AttendanceContract {..." */ 32
                        /// @src 0:1033:1034  "0"
                        switch gt(newLen_3, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f)
                        case /** @src 0:1033:1034  "0" */ 1 {
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(0, /** @src 0:1033:1034  "0" */ add(slot, /** @src 0:682:10606  "contract AttendanceContract {..." */ 5))
                            /// @src 0:1033:1034  "0"
                            let dstPtr_3 := /** @src 0:682:10606  "contract AttendanceContract {..." */ keccak256(0, 32)
                            /// @src 0:1033:1034  "0"
                            let i_5 := /** @src 0:682:10606  "contract AttendanceContract {..." */ 0
                            /// @src 0:1033:1034  "0"
                            for { }
                            lt(i_5, and(newLen_3, not(31)))
                            {
                                i_5 := add(i_5, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32)
                            }
                            /// @src 0:1033:1034  "0"
                            {
                                sstore(dstPtr_3, mload(add(_21, srcOffset_3)))
                                dstPtr_3 := add(dstPtr_3, /** @src 0:682:10606  "contract AttendanceContract {..." */ 1)
                                /// @src 0:1033:1034  "0"
                                srcOffset_3 := add(srcOffset_3, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32)
                            }
                            /// @src 0:1033:1034  "0"
                            if lt(and(newLen_3, not(31)), newLen_3)
                            {
                                let lastValue_3 := mload(add(_21, srcOffset_3))
                                sstore(dstPtr_3, and(lastValue_3, not(shr(and(shl(3, newLen_3), 248), not(0)))))
                            }
                            sstore(add(slot, /** @src 0:682:10606  "contract AttendanceContract {..." */ 5), /** @src 0:1033:1034  "0" */ add(shl(/** @src 0:682:10606  "contract AttendanceContract {..." */ 1, /** @src 0:1033:1034  "0" */ newLen_3), /** @src 0:682:10606  "contract AttendanceContract {..." */ 1))
                        }
                        default /// @src 0:1033:1034  "0"
                        {
                            let value_3 := /** @src 0:682:10606  "contract AttendanceContract {..." */ 0
                            /// @src 0:1033:1034  "0"
                            if newLen_3
                            {
                                value_3 := mload(add(_21, srcOffset_3))
                            }
                            sstore(add(slot, /** @src 0:682:10606  "contract AttendanceContract {..." */ 5), /** @src 0:1033:1034  "0" */ extract_used_part_and_set_length_of_short_byte_array(value_3, newLen_3))
                        }
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        mstore(0, calldataload(4))
                        mstore(32, 1)
                        let length_2 := sload(keccak256(0, 64))
                        mstore(32, /** @src 0:3269:3287  "mappingDateToIndex" */ 0x02)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        let _23 := keccak256(0, 64)
                        /// @src 0:1033:1034  "0"
                        mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, and(/** @src 0:2843:2859  "date <= MAX_DATE" */ value1, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0xffffffff))
                        /// @src 0:1033:1034  "0"
                        mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ 32, /** @src 0:1033:1034  "0" */ _23)
                        sstore(keccak256(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, 64), /** @src 0:1033:1034  "0" */ length_2)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        mstore(0, calldataload(4))
                        mstore(32, 1)
                        let length_3 := sload(keccak256(0, 64))
                        /// @src 0:1033:1034  "0"
                        if gt(add(length_3, not(0)), length_3)
                        {
                            mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, shl(224, 0x4e487b71))
                            /// @src 0:1033:1034  "0"
                            mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ 4, /** @src 0:1033:1034  "0" */ 0x11)
                            revert(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, 36)
                        }
                        /// @src 0:1033:1034  "0"
                        let _24 := copy_literal_to_memory_a2de31aaac541825fa8b564ea0988606adecd3b553070821b24b378102ebef2b()
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        let memPtr_7 := mload(64)
                        finalize_allocation_28925(memPtr_7)
                        mstore(memPtr_7, and(/** @src 0:3017:3040  "checkInTime <= MAX_TIME" */ value2, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0xffffffff))
                        mstore(/** @src 0:10099:10144  "History(checkInTime, checkoutOutTime, reason)" */ add(memPtr_7, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32), 0)
                        mstore(/** @src 0:10099:10144  "History(checkInTime, checkoutOutTime, reason)" */ add(memPtr_7, /** @src 0:682:10606  "contract AttendanceContract {..." */ 64), _24)
                        mstore(0, calldataload(4))
                        mstore(32, /** @src 0:1033:1034  "0" */ 3)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        let dataSlot_2 := keccak256(0, 64)
                        mstore(0, /** @src 0:1033:1034  "0" */ add(length_3, not(0)))
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        mstore(32, dataSlot_2)
                        let dataSlot_3 := keccak256(0, 64)
                        let oldLen_3 := sload(dataSlot_3)
                        if iszero(lt(oldLen_3, /** @src 0:1033:1034  "0" */ 18446744073709551616))
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        {
                            mstore(0, shl(224, 0x4e487b71))
                            mstore(4, 0x41)
                            revert(0, 36)
                        }
                        let _25 := add(oldLen_3, 1)
                        sstore(dataSlot_3, _25)
                        if iszero(lt(oldLen_3, _25))
                        {
                            /// @src 0:1033:1034  "0"
                            mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, shl(224, 0x4e487b71))
                            /// @src 0:1033:1034  "0"
                            mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ 4, /** @src 0:1033:1034  "0" */ 0x32)
                            revert(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, 36)
                        }
                        mstore(0, dataSlot_3)
                        let data_6 := keccak256(0, 32)
                        let slot_1 := add(data_6, shl(1, oldLen_3))
                        /// @src 0:1033:1034  "0"
                        sstore(slot_1, or(and(sload(slot_1), not(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0xffffffff)), and(/** @src 0:1033:1034  "0" */ mload(/** @src 0:682:10606  "contract AttendanceContract {..." */ memPtr_7), 0xffffffff)))
                        update_storage_value_offsett_uint32_to_t_uint32(slot_1, and(/** @src 0:1033:1034  "0" */ mload(/** @src 0:10099:10144  "History(checkInTime, checkoutOutTime, reason)" */ add(memPtr_7, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32)), 0xffffffff))
                        let memberSlot_1 := add(slot_1, 1)
                        let _26 := mload(/** @src 0:10099:10144  "History(checkInTime, checkoutOutTime, reason)" */ add(memPtr_7, /** @src 0:682:10606  "contract AttendanceContract {..." */ 64))
                        /// @src 0:1033:1034  "0"
                        let newLen_4 := /** @src 0:682:10606  "contract AttendanceContract {..." */ mload(/** @src 0:1033:1034  "0" */ _26)
                        if gt(newLen_4, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0xffffffffffffffff)
                        /// @src 0:1033:1034  "0"
                        {
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(0, shl(224, 0x4e487b71))
                            mstore(4, 0x41)
                            revert(0, 36)
                        }
                        /// @src 0:1033:1034  "0"
                        let _27 := extract_byte_array_length(sload(memberSlot_1))
                        if gt(_27, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f)
                        /// @src 0:1033:1034  "0"
                        {
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(0, memberSlot_1)
                            let data_7 := keccak256(0, 32)
                            /// @src 0:1033:1034  "0"
                            let deleteStart_4 := add(data_7, shr(/** @src 0:682:10606  "contract AttendanceContract {..." */ 5, /** @src 0:1033:1034  "0" */ add(newLen_4, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f)))
                            /// @src 0:1033:1034  "0"
                            if lt(newLen_4, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32)
                            /// @src 0:1033:1034  "0"
                            { deleteStart_4 := data_7 }
                            clear_storage_range_bytes1(deleteStart_4, add(data_7, shr(/** @src 0:682:10606  "contract AttendanceContract {..." */ 5, /** @src 0:1033:1034  "0" */ add(_27, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f))))
                        }
                        /// @src 0:1033:1034  "0"
                        let srcOffset_4 := /** @src 0:682:10606  "contract AttendanceContract {..." */ 0
                        /// @src 0:1033:1034  "0"
                        srcOffset_4 := /** @src 0:682:10606  "contract AttendanceContract {..." */ 32
                        /// @src 0:1033:1034  "0"
                        switch gt(newLen_4, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x1f)
                        case /** @src 0:1033:1034  "0" */ 1 {
                            let loopEnd := and(newLen_4, not(31))
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(0, memberSlot_1)
                            /// @src 0:1033:1034  "0"
                            let dstPtr_4 := /** @src 0:682:10606  "contract AttendanceContract {..." */ keccak256(0, 32)
                            /// @src 0:1033:1034  "0"
                            let i_6 := /** @src 0:682:10606  "contract AttendanceContract {..." */ 0
                            /// @src 0:1033:1034  "0"
                            for { }
                            lt(i_6, loopEnd)
                            {
                                i_6 := add(i_6, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32)
                            }
                            /// @src 0:1033:1034  "0"
                            {
                                sstore(dstPtr_4, mload(add(_26, srcOffset_4)))
                                dstPtr_4 := add(dstPtr_4, /** @src 0:682:10606  "contract AttendanceContract {..." */ 1)
                                /// @src 0:1033:1034  "0"
                                srcOffset_4 := add(srcOffset_4, /** @src 0:682:10606  "contract AttendanceContract {..." */ 32)
                            }
                            /// @src 0:1033:1034  "0"
                            if lt(loopEnd, newLen_4)
                            {
                                let lastValue_4 := mload(add(_26, srcOffset_4))
                                sstore(dstPtr_4, and(lastValue_4, not(shr(and(shl(3, newLen_4), 248), not(0)))))
                            }
                            sstore(memberSlot_1, add(shl(/** @src 0:682:10606  "contract AttendanceContract {..." */ 1, /** @src 0:1033:1034  "0" */ newLen_4), /** @src 0:682:10606  "contract AttendanceContract {..." */ 1))
                        }
                        default /// @src 0:1033:1034  "0"
                        {
                            let value_4 := /** @src 0:682:10606  "contract AttendanceContract {..." */ 0
                            /// @src 0:1033:1034  "0"
                            if newLen_4
                            {
                                value_4 := mload(add(_26, srcOffset_4))
                            }
                            sstore(memberSlot_1, extract_used_part_and_set_length_of_short_byte_array(value_4, newLen_4))
                        }
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        return(0, 0)
                    }
                    case 0x53f7c5ef {
                        if callvalue() { revert(0, 0) }
                        if slt(add(calldatasize(), not(3)), 64) { revert(0, 0) }
                        let value_5 := calldataload(4)
                        let value_6 := calldataload(36)
                        pop(allocate_and_zero_memory_struct_struct_AttendanceData())
                        mstore(0, value_5)
                        let _28 := 1
                        let _29 := 32
                        mstore(_29, 1)
                        if /** @src 0:9249:9283  "attendances[employeeID].length > 0" */ iszero(/** @src 0:682:10606  "contract AttendanceContract {..." */ sload(keccak256(0, 64)))
                        {
                            let memPtr_8 := mload(64)
                            mstore(memPtr_8, /** @src 0:972:988  "24 * 60 * 60 - 1" */ shl(229, 4594637))
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(add(memPtr_8, 4), _29)
                            mstore(add(memPtr_8, 36), 41)
                            mstore(add(memPtr_8, 68), "Employee ID does not exist in at")
                            mstore(add(memPtr_8, 100), "tendances")
                            revert(memPtr_8, 132)
                        }
                        mstore(0, value_5)
                        mstore(_29, 1)
                        /// @src 0:9396:9426  "attendances[employeeID][index]"
                        let _30, _31 := storage_array_index_access_struct_AttendanceData__dyn_ptr(/** @src 0:682:10606  "contract AttendanceContract {..." */ keccak256(0, 64), /** @src 0:9396:9426  "attendances[employeeID][index]" */ value_6)
                        /// @src 0:9361:9426  "AttendanceData memory attendance = attendances[employeeID][index]"
                        let var_attendance_mpos := /** @src 0:682:10606  "contract AttendanceContract {..." */ read_from_storage_reference_type_struct_AttendanceData(/** @src 0:9361:9426  "AttendanceData memory attendance = attendances[employeeID][index]" */ _30)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        mstore(0, value_5)
                        mstore(_29, /** @src 0:10569:10578  "histories" */ 0x03)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        let dataSlot_4 := keccak256(0, 64)
                        mstore(0, value_6)
                        mstore(_29, dataSlot_4)
                        let dataSlot_5 := keccak256(0, 64)
                        let length_4 := sload(dataSlot_5)
                        let _32 := array_allocation_size_array_string_dyn(length_4)
                        let memPtr_9 := mload(64)
                        finalize_allocation(memPtr_9, _32)
                        mstore(memPtr_9, length_4)
                        let mpos_1 := memPtr_9
                        mpos_1 := add(memPtr_9, _29)
                        let mpos_2 := mpos_1
                        mstore(0, dataSlot_5)
                        let spos_1 := keccak256(0, _29)
                        let i_7 := 0
                        for { } lt(i_7, length_4) { i_7 := add(i_7, _28) }
                        {
                            let memPtr_10 := mload(64)
                            finalize_allocation_28925(memPtr_10)
                            let _33 := sload(spos_1)
                            let _34 := 0xffffffff
                            mstore(memPtr_10, and(_33, _34))
                            mstore(add(memPtr_10, _29), and(shr(_29, _33), _34))
                            mstore(add(memPtr_10, 64), copy_array_from_storage_to_memory_string(add(spos_1, _28)))
                            mstore(mpos_1, memPtr_10)
                            mpos_1 := add(mpos_1, _29)
                            spos_1 := add(spos_1, 2)
                        }
                        let memPos_1 := mload(64)
                        mstore(memPos_1, 64)
                        let tail := abi_encode_struct_AttendanceData(var_attendance_mpos, add(memPos_1, 64))
                        mstore(add(memPos_1, _29), sub(tail, memPos_1))
                        let pos := tail
                        let length_5 := mload(memPtr_9)
                        mstore(tail, length_5)
                        pos := add(tail, _29)
                        let tail_1 := add(add(tail, shl(5, length_5)), _29)
                        let srcPtr_1 := mpos_2
                        let i_8 := 0
                        for { } lt(i_8, length_5) { i_8 := add(i_8, _28) }
                        {
                            mstore(pos, add(sub(tail_1, tail), /** @src 0:1033:1034  "0" */ not(31)))
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            let _35 := mload(srcPtr_1)
                            let _36 := 0x60
                            let _37 := 0xffffffff
                            mstore(tail_1, and(mload(_35), _37))
                            mstore(add(tail_1, _29), and(mload(add(_35, _29)), _37))
                            let memberValue0 := mload(add(_35, 64))
                            mstore(add(tail_1, 64), _36)
                            tail_1 := abi_encode_string(memberValue0, add(tail_1, _36))
                            srcPtr_1 := add(srcPtr_1, _29)
                            pos := add(pos, _29)
                        }
                        return(memPos_1, sub(tail_1, memPos_1))
                    }
                    case 0x893d20e8 {
                        if callvalue() { revert(0, 0) }
                        if slt(add(calldatasize(), not(3)), 0) { revert(0, 0) }
                        let cleaned := and(sload(0), sub(shl(160, 1), 1))
                        let memPos_2 := mload(64)
                        mstore(memPos_2, cleaned)
                        return(memPos_2, 32)
                    }
                    case 0x9c81ca25 {
                        if callvalue() { revert(0, 0) }
                        let param, param_1, param_2 := abi_decode_uint256t_uint32t_uint32(calldatasize())
                        let _38 := 0xffffffff
                        /// @src 0:6315:6336  "startDate >= MIN_DATE"
                        let _39 := /** @src 0:682:10606  "contract AttendanceContract {..." */ and(/** @src 0:6315:6336  "startDate >= MIN_DATE" */ param_1, /** @src 0:682:10606  "contract AttendanceContract {..." */ _38)
                        if /** @src 0:6315:6336  "startDate >= MIN_DATE" */ lt(_39, /** @src 0:1196:1201  "10101" */ 0x2775)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        {
                            let memPtr_11 := mload(64)
                            mstore(memPtr_11, /** @src 0:972:988  "24 * 60 * 60 - 1" */ shl(229, 4594637))
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(add(memPtr_11, 4), 32)
                            mstore(add(memPtr_11, 36), 46)
                            mstore(add(memPtr_11, 68), "Start Date must be large or equa")
                            mstore(add(memPtr_11, 100), "l than 1/01/01")
                            revert(memPtr_11, 132)
                        }
                        /// @src 0:6439:6458  "endDate <= MAX_DATE"
                        let _40 := /** @src 0:682:10606  "contract AttendanceContract {..." */ and(/** @src 0:6439:6458  "endDate <= MAX_DATE" */ param_2, /** @src 0:682:10606  "contract AttendanceContract {..." */ _38)
                        if /** @src 0:6439:6458  "endDate <= MAX_DATE" */ gt(_40, /** @src 0:1141:1149  "99990101" */ 0x05f5ba55)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        {
                            let memPtr_12 := mload(64)
                            mstore(memPtr_12, /** @src 0:972:988  "24 * 60 * 60 - 1" */ shl(229, 4594637))
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(add(memPtr_12, 4), 32)
                            mstore(add(memPtr_12, 36), 46)
                            mstore(add(memPtr_12, 68), "End Date must be less or equal t")
                            mstore(add(memPtr_12, 100), "han 9999/01/01")
                            revert(memPtr_12, 132)
                        }
                        if /** @src 0:6561:6581  "startDate <= endDate" */ gt(_39, _40)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        {
                            let memPtr_13 := mload(64)
                            mstore(memPtr_13, /** @src 0:972:988  "24 * 60 * 60 - 1" */ shl(229, 4594637))
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(add(memPtr_13, 4), 32)
                            mstore(add(memPtr_13, 36), 46)
                            mstore(add(memPtr_13, 68), "Start date must be before or equ")
                            mstore(add(memPtr_13, 100), "al to end date")
                            revert(memPtr_13, 132)
                        }
                        mstore(0, param)
                        /// @src 0:6701:6712  "attendances"
                        let _41 := 0x01
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        let _42 := 0x20
                        mstore(_42, /** @src 0:6701:6712  "attendances" */ 0x01)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        let dataSlot_6 := keccak256(0, 64)
                        let length_6 := sload(dataSlot_6)
                        let _43 := array_allocation_size_array_string_dyn(length_6)
                        let memPtr_14 := mload(64)
                        finalize_allocation(memPtr_14, _43)
                        mstore(memPtr_14, length_6)
                        let mpos_3 := memPtr_14
                        mpos_3 := add(memPtr_14, _42)
                        mstore(0, dataSlot_6)
                        let spos_2 := keccak256(0, _42)
                        let i_9 := 0
                        for { }
                        lt(i_9, length_6)
                        {
                            i_9 := add(i_9, /** @src 0:6701:6712  "attendances" */ _41)
                        }
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        {
                            mstore(mpos_3, read_from_storage_reference_type_struct_AttendanceData(spos_2))
                            mpos_3 := add(mpos_3, _42)
                            spos_2 := add(spos_2, 6)
                        }
                        let _44 := mload(/** @src 0:6870:6887  "allRecords.length" */ memPtr_14)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        let _45 := array_allocation_size_array_string_dyn(_44)
                        let memPtr_15 := mload(64)
                        finalize_allocation(memPtr_15, _45)
                        mstore(memPtr_15, _44)
                        let _46 := add(array_allocation_size_array_string_dyn(_44), /** @src 0:1033:1034  "0" */ not(31))
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        let i_10 := 0
                        for { } lt(i_10, _46) { i_10 := add(i_10, _42) }
                        {
                            mstore(add(add(memPtr_15, i_10), _42), allocate_and_zero_memory_struct_struct_AttendanceData())
                        }
                        /// @src 0:6908:6922  "uint count = 0"
                        let var_count := /** @src 0:682:10606  "contract AttendanceContract {..." */ 0
                        /// @src 0:6937:6950  "uint256 i = 0"
                        let var_i := /** @src 0:682:10606  "contract AttendanceContract {..." */ 0
                        /// @src 0:6932:7206  "for (uint256 i = 0; i < allRecords.length; i++) {..."
                        for { }
                        /** @src 0:6701:6712  "attendances" */ _41
                        /// @src 0:6937:6950  "uint256 i = 0"
                        {
                            /// @src 0:6975:6978  "i++"
                            var_i := /** @src 0:682:10606  "contract AttendanceContract {..." */ add(/** @src 0:6975:6978  "i++" */ var_i, /** @src 0:6701:6712  "attendances" */ _41)
                        }
                        /// @src 0:6975:6978  "i++"
                        {
                            /// @src 0:6952:6973  "i < allRecords.length"
                            if iszero(lt(var_i, /** @src 0:682:10606  "contract AttendanceContract {..." */ mload(/** @src 0:6956:6973  "allRecords.length" */ memPtr_14)))
                            /// @src 0:6952:6973  "i < allRecords.length"
                            { break }
                            /// @src 0:7015:7079  "allRecords[i].date >= startDate && allRecords[i].date <= endDate"
                            let expr := /** @src 0:7015:7046  "allRecords[i].date >= startDate" */ iszero(lt(/** @src 0:682:10606  "contract AttendanceContract {..." */ and(/** @src 0:1033:1034  "0" */ mload(/** @src 0:7015:7028  "allRecords[i]" */ mload(memory_array_index_access_struct_AttendanceData_dyn(memPtr_14, var_i))), /** @src 0:682:10606  "contract AttendanceContract {..." */ _38), /** @src 0:7015:7046  "allRecords[i].date >= startDate" */ _39))
                            /// @src 0:7015:7079  "allRecords[i].date >= startDate && allRecords[i].date <= endDate"
                            if expr
                            {
                                expr := /** @src 0:7050:7079  "allRecords[i].date <= endDate" */ iszero(gt(/** @src 0:682:10606  "contract AttendanceContract {..." */ and(/** @src 0:1033:1034  "0" */ mload(/** @src 0:7050:7063  "allRecords[i]" */ mload(memory_array_index_access_struct_AttendanceData_dyn(memPtr_14, var_i))), /** @src 0:682:10606  "contract AttendanceContract {..." */ _38), /** @src 0:7050:7079  "allRecords[i].date <= endDate" */ _40))
                            }
                            /// @src 0:6994:7196  "if (..."
                            if expr
                            {
                                /// @src 0:7112:7156  "attendanceByRangeDate[count] = allRecords[i]"
                                mstore(memory_array_index_access_struct_AttendanceData_dyn(memPtr_15, var_count), /** @src 0:7143:7156  "allRecords[i]" */ mload(memory_array_index_access_struct_AttendanceData_dyn(memPtr_14, var_i)))
                                /// @src 0:7112:7156  "attendanceByRangeDate[count] = allRecords[i]"
                                pop(memory_array_index_access_struct_AttendanceData_dyn(memPtr_15, var_count))
                                /// @src 0:682:10606  "contract AttendanceContract {..."
                                if eq(var_count, /** @src 0:1033:1034  "0" */ not(0))
                                /// @src 0:682:10606  "contract AttendanceContract {..."
                                {
                                    /// @src 0:1033:1034  "0"
                                    mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, shl(224, 0x4e487b71))
                                    /// @src 0:1033:1034  "0"
                                    mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ 4, /** @src 0:1033:1034  "0" */ 0x11)
                                    revert(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, /** @src 0:1033:1034  "0" */ 0x24)
                                }
                                /// @src 0:7174:7181  "count++"
                                var_count := /** @src 0:682:10606  "contract AttendanceContract {..." */ add(var_count, /** @src 0:6701:6712  "attendances" */ _41)
                            }
                        }
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        let memPos_3 := mload(64)
                        mstore(memPos_3, var_count)
                        mstore(add(memPos_3, _42), 64)
                        return(memPos_3, sub(abi_encode_array_struct_AttendanceData_dyn(memPtr_15, add(memPos_3, 64)), memPos_3))
                    }
                    case 0xa6f9dae1 {
                        if callvalue() { revert(0, 0) }
                        if slt(add(calldatasize(), not(3)), 32) { revert(0, 0) }
                        let value_7 := calldataload(4)
                        let _47 := sub(shl(160, 1), 1)
                        let _48 := and(value_7, _47)
                        if iszero(eq(value_7, _48)) { revert(0, 0) }
                        let _49 := sload(0)
                        let cleaned_1 := and(_49, _47)
                        /// @src 0:847:898  "require(msg.sender == owner, \"Caller is not owner\")"
                        require_helper_stringliteral_2d10(/** @src 0:855:874  "msg.sender == owner" */ eq(/** @src 0:855:865  "msg.sender" */ caller(), /** @src 0:855:874  "msg.sender == owner" */ cleaned_1))
                        /// @src 0:2147:2172  "OwnerSet(owner, newOwner)"
                        log3(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, 0, /** @src 0:2147:2172  "OwnerSet(owner, newOwner)" */ 0x342827c97908e5e2f71151c08502a66d44b6f758e3ac2f1de95f02eb95f0a735, cleaned_1, _48)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        sstore(0, or(and(_49, shl(160, 0xffffffffffffffffffffffff)), _48))
                        return(0, 0)
                    }
                    case 0xfcf9199c {
                        if callvalue() { revert(0, 0) }
                        if slt(add(calldatasize(), not(3)), 160) { revert(0, 0) }
                        let value_8 := calldataload(4)
                        let value1_1 := abi_decode_uint32_28923()
                        let value2_1 := abi_decode_uint32_28924()
                        let value_9 := calldataload(100)
                        let _50 := 0xffffffff
                        let _51 := and(value_9, _50)
                        if iszero(eq(value_9, _51)) { revert(0, 0) }
                        let offset_7 := calldataload(132)
                        if gt(offset_7, 0xffffffffffffffff) { revert(0, 0) }
                        let value4 := abi_decode_string(add(4, offset_7), calldatasize())
                        /// @src 0:847:898  "require(msg.sender == owner, \"Caller is not owner\")"
                        require_helper_stringliteral_2d10(/** @src 0:855:874  "msg.sender == owner" */ eq(/** @src 0:855:865  "msg.sender" */ caller(), /** @src 0:682:10606  "contract AttendanceContract {..." */ and(sload(0), sub(shl(160, 1), 1))))
                        /// @src 0:7818:7834  "date <= MAX_DATE"
                        let _52 := /** @src 0:682:10606  "contract AttendanceContract {..." */ and(/** @src 0:7818:7834  "date <= MAX_DATE" */ value1_1, /** @src 0:682:10606  "contract AttendanceContract {..." */ _50)
                        /// @src 0:7810:7881  "require(date <= MAX_DATE, \"Date must be less or equal than 9999/01/01\")"
                        require_helper_stringliteral_7a37(/** @src 0:7818:7834  "date <= MAX_DATE" */ iszero(gt(_52, /** @src 0:1141:1149  "99990101" */ 0x05f5ba55)))
                        /// @src 0:7891:7960  "require(date >= MIN_DATE, \"Date must be large or equal than 1/01/01\")"
                        require_helper_stringliteral_ace2(/** @src 0:7899:7915  "date >= MIN_DATE" */ iszero(lt(_52, /** @src 0:1196:1201  "10101" */ 0x2775)))
                        /// @src 0:7971:8094  "require(..."
                        require_helper_stringliteral(/** @src 0:7992:8016  "checkOutTime <= MAX_TIME" */ iszero(gt(_51, /** @src 0:972:988  "24 * 60 * 60 - 1" */ 0x01517f)))
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        if /** @src 0:8246:8273  "checkInTime <= checkOutTime" */ gt(/** @src 0:682:10606  "contract AttendanceContract {..." */ and(/** @src 0:8125:8148  "checkInTime >= MIN_TIME" */ value2_1, /** @src 0:682:10606  "contract AttendanceContract {..." */ _50), /** @src 0:8246:8273  "checkInTime <= checkOutTime" */ _51)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        {
                            let memPtr_16 := mload(64)
                            mstore(memPtr_16, /** @src 0:972:988  "24 * 60 * 60 - 1" */ shl(229, 4594637))
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(add(memPtr_16, 4), 32)
                            mstore(add(memPtr_16, 36), 43)
                            mstore(add(memPtr_16, 68), "CheckInt time must be less to Ch")
                            mstore(add(memPtr_16, 100), "eckout time")
                            revert(memPtr_16, 132)
                        }
                        mstore(0, value_8)
                        let _53 := 32
                        mstore(_53, /** @src 0:8374:8392  "mappingDateToIndex" */ 0x02)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        let _54 := keccak256(0, 64)
                        /// @src 0:1033:1034  "0"
                        mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, _52)
                        /// @src 0:1033:1034  "0"
                        mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ _53, /** @src 0:1033:1034  "0" */ _54)
                        /// @src 0:8353:8474  "require(..."
                        require_helper_stringliteral_da3e(/** @src 0:8374:8415  "mappingDateToIndex[employeeID][date] != 0" */ iszero(iszero(/** @src 0:1033:1034  "0" */ sload(keccak256(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, 64)))))
                        mstore(0, value_8)
                        mstore(_53, /** @src 0:8374:8392  "mappingDateToIndex" */ 0x02)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        let _55 := keccak256(0, 64)
                        /// @src 0:1033:1034  "0"
                        mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, _52)
                        /// @src 0:1033:1034  "0"
                        mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ _53, /** @src 0:1033:1034  "0" */ _55)
                        let _56 := sload(keccak256(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, 64))
                        /// @src 0:1033:1034  "0"
                        let diff := add(_56, not(0))
                        if gt(diff, _56)
                        {
                            mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, shl(224, 0x4e487b71))
                            /// @src 0:1033:1034  "0"
                            mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ 4, /** @src 0:1033:1034  "0" */ 0x11)
                            revert(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, 36)
                        }
                        mstore(0, value_8)
                        mstore(_53, 1)
                        /// @src 0:8552:8582  "attendances[employeeID][index]"
                        let _57, _58 := storage_array_index_access_struct_AttendanceData__dyn_ptr(/** @src 0:682:10606  "contract AttendanceContract {..." */ keccak256(0, 64), /** @src 0:8552:8582  "attendances[employeeID][index]" */ diff)
                        /// @src 0:1033:1034  "0"
                        sstore(_57, or(and(sload(_57), not(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0xffffffff)), _52))
                        mstore(0, value_8)
                        mstore(_53, 1)
                        /// @src 0:8604:8634  "attendances[employeeID][index]"
                        let _59, _60 := storage_array_index_access_struct_AttendanceData__dyn_ptr(/** @src 0:682:10606  "contract AttendanceContract {..." */ keccak256(0, 64), /** @src 0:8604:8634  "attendances[employeeID][index]" */ diff)
                        /// @src 0:8604:8660  "attendances[employeeID][index].checkInTime = checkInTime"
                        update_storage_value_offsett_uint32_to_t_uint32(_59, value2_1)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        mstore(0, value_8)
                        mstore(_53, 1)
                        /// @src 0:8670:8700  "attendances[employeeID][index]"
                        let _61, _62 := storage_array_index_access_struct_AttendanceData__dyn_ptr(/** @src 0:682:10606  "contract AttendanceContract {..." */ keccak256(0, 64), /** @src 0:8670:8700  "attendances[employeeID][index]" */ diff)
                        /// @src 0:8670:8728  "attendances[employeeID][index].checkOutTime = checkOutTime"
                        update_storage_value_offsett_uint32_to_uint32(_61, value_9)
                        /// @src 0:8798:8804  "reason"
                        fun_addHistories(value_8, diff, value2_1, value_9, value4)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        return(0, 0)
                    }
                    case 0xfd25569d {
                        if callvalue() { revert(0, 0) }
                        let param_3, param_4, param_5 := abi_decode_uint256t_uint32t_uint32(calldatasize())
                        /// @src 0:847:898  "require(msg.sender == owner, \"Caller is not owner\")"
                        require_helper_stringliteral_2d10(/** @src 0:855:874  "msg.sender == owner" */ eq(/** @src 0:855:865  "msg.sender" */ caller(), /** @src 0:682:10606  "contract AttendanceContract {..." */ and(sload(0), sub(shl(160, 1), 1))))
                        let _63 := 0xffffffff
                        /// @src 0:4186:4202  "date <= MAX_DATE"
                        let _64 := /** @src 0:682:10606  "contract AttendanceContract {..." */ and(/** @src 0:4186:4202  "date <= MAX_DATE" */ param_4, /** @src 0:682:10606  "contract AttendanceContract {..." */ _63)
                        /// @src 0:4178:4249  "require(date <= MAX_DATE, \"Date must be less or equal than 9999/01/01\")"
                        require_helper_stringliteral_7a37(/** @src 0:4186:4202  "date <= MAX_DATE" */ iszero(gt(_64, /** @src 0:1141:1149  "99990101" */ 0x05f5ba55)))
                        /// @src 0:4259:4328  "require(date >= MIN_DATE, \"Date must be large or equal than 1/01/01\")"
                        require_helper_stringliteral_ace2(/** @src 0:4267:4283  "date >= MIN_DATE" */ iszero(lt(_64, /** @src 0:1196:1201  "10101" */ 0x2775)))
                        /// @src 0:4360:4384  "checkOutTime <= MAX_TIME"
                        let _65 := /** @src 0:682:10606  "contract AttendanceContract {..." */ and(/** @src 0:4360:4384  "checkOutTime <= MAX_TIME" */ param_5, /** @src 0:682:10606  "contract AttendanceContract {..." */ _63)
                        /// @src 0:4339:4462  "require(..."
                        require_helper_stringliteral(/** @src 0:4360:4384  "checkOutTime <= MAX_TIME" */ iszero(gt(_65, /** @src 0:972:988  "24 * 60 * 60 - 1" */ 0x01517f)))
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        mstore(0, param_3)
                        let _66 := 0x20
                        mstore(_66, /** @src 0:4616:4634  "mappingDateToIndex" */ 0x02)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        let _67 := keccak256(0, 64)
                        /// @src 0:1033:1034  "0"
                        mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, _64)
                        /// @src 0:1033:1034  "0"
                        mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ _66, /** @src 0:1033:1034  "0" */ _67)
                        /// @src 0:4595:4716  "require(..."
                        require_helper_stringliteral_da3e(/** @src 0:4616:4657  "mappingDateToIndex[employeeID][date] != 0" */ iszero(iszero(/** @src 0:1033:1034  "0" */ sload(keccak256(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, 64)))))
                        mstore(0, param_3)
                        mstore(_66, /** @src 0:4616:4634  "mappingDateToIndex" */ 0x02)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        let _68 := keccak256(0, 64)
                        /// @src 0:1033:1034  "0"
                        mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, _64)
                        /// @src 0:1033:1034  "0"
                        mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ _66, /** @src 0:1033:1034  "0" */ _68)
                        let _69 := sload(keccak256(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, 64))
                        /// @src 0:1033:1034  "0"
                        let diff_1 := add(_69, not(0))
                        if gt(diff_1, _69)
                        {
                            mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, shl(224, 0x4e487b71))
                            /// @src 0:1033:1034  "0"
                            mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ 4, /** @src 0:1033:1034  "0" */ 0x11)
                            revert(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0, /** @src 0:1033:1034  "0" */ 0x24)
                        }
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        mstore(0, param_3)
                        mstore(_66, /** @src 0:4493:4517  "checkOutTime >= MIN_TIME" */ 1)
                        /// @src 0:4830:4860  "attendances[employeeID][index]"
                        let _70, _71 := storage_array_index_access_struct_AttendanceData__dyn_ptr(/** @src 0:682:10606  "contract AttendanceContract {..." */ keccak256(0, 64), /** @src 0:4830:4860  "attendances[employeeID][index]" */ diff_1)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        if iszero(/** @src 0:4815:4872  "checkOutTime > attendances[employeeID][index].checkInTime" */ gt(_65, /** @src 0:682:10606  "contract AttendanceContract {..." */ and(shr(_66, sload(/** @src 0:4830:4872  "attendances[employeeID][index].checkInTime" */ _70)), /** @src 0:682:10606  "contract AttendanceContract {..." */ _63)))
                        {
                            let memPtr_17 := mload(64)
                            mstore(memPtr_17, /** @src 0:972:988  "24 * 60 * 60 - 1" */ shl(229, 4594637))
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(add(memPtr_17, 4), _66)
                            mstore(add(memPtr_17, 36), 45)
                            mstore(add(memPtr_17, 68), "Checkout time must be large than")
                            mstore(add(memPtr_17, 100), " checkin time")
                            revert(memPtr_17, 132)
                        }
                        mstore(0, param_3)
                        mstore(_66, /** @src 0:4493:4517  "checkOutTime >= MIN_TIME" */ 1)
                        /// @src 0:4974:5004  "attendances[employeeID][index]"
                        let _72, _73 := storage_array_index_access_struct_AttendanceData__dyn_ptr(/** @src 0:682:10606  "contract AttendanceContract {..." */ keccak256(0, 64), /** @src 0:4974:5004  "attendances[employeeID][index]" */ diff_1)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        if iszero(/** @src 0:4974:5022  "attendances[employeeID][index].checkOutTime == 0" */ iszero(/** @src 0:682:10606  "contract AttendanceContract {..." */ and(shr(64, sload(/** @src 0:4974:5017  "attendances[employeeID][index].checkOutTime" */ _72)), /** @src 0:682:10606  "contract AttendanceContract {..." */ _63)))
                        {
                            let memPtr_18 := mload(64)
                            mstore(memPtr_18, /** @src 0:972:988  "24 * 60 * 60 - 1" */ shl(229, 4594637))
                            /// @src 0:682:10606  "contract AttendanceContract {..."
                            mstore(add(memPtr_18, 4), _66)
                            mstore(add(memPtr_18, 36), 34)
                            mstore(add(memPtr_18, 68), "Attendance has already checked o")
                            mstore(add(memPtr_18, 100), "ut")
                            revert(memPtr_18, 132)
                        }
                        mstore(0, param_3)
                        mstore(_66, /** @src 0:4493:4517  "checkOutTime >= MIN_TIME" */ 1)
                        /// @src 0:5093:5123  "attendances[employeeID][index]"
                        let _74, _75 := storage_array_index_access_struct_AttendanceData__dyn_ptr(/** @src 0:682:10606  "contract AttendanceContract {..." */ keccak256(0, 64), /** @src 0:5093:5123  "attendances[employeeID][index]" */ diff_1)
                        /// @src 0:5093:5151  "attendances[employeeID][index].checkOutTime = checkOutTime"
                        update_storage_value_offsett_uint32_to_uint32(_74, param_5)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        mstore(0, param_3)
                        mstore(_66, /** @src 0:4493:4517  "checkOutTime >= MIN_TIME" */ 1)
                        /// @src 0:5231:5261  "attendances[employeeID][index]"
                        let _76, _77 := storage_array_index_access_struct_AttendanceData__dyn_ptr(/** @src 0:682:10606  "contract AttendanceContract {..." */ keccak256(0, 64), /** @src 0:5231:5261  "attendances[employeeID][index]" */ diff_1)
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        let value_10 := and(shr(_66, sload(/** @src 0:5231:5273  "attendances[employeeID][index].checkInTime" */ _76)), /** @src 0:682:10606  "contract AttendanceContract {..." */ _63)
                        /// @src 0:5313:5329  "REASON_CHECK_OUT"
                        fun_addHistories(param_3, diff_1, value_10, param_5, /** @src 0:1033:1034  "0" */ copy_literal_to_memory_a2de31aaac541825fa8b564ea0988606adecd3b553070821b24b378102ebef2b())
                        /// @src 0:682:10606  "contract AttendanceContract {..."
                        return(0, 0)
                    }
                }
                revert(0, 0)
            }
            function abi_encode_string(value, pos) -> end
            {
                let length := mload(value)
                mstore(pos, length)
                mcopy(add(pos, 0x20), add(value, 0x20), length)
                mstore(add(add(pos, length), 0x20), /** @src -1:-1:-1 */ 0)
                /// @src 0:682:10606  "contract AttendanceContract {..."
                end := add(add(pos, and(add(length, 31), /** @src 0:1033:1034  "0" */ not(31))), /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x20)
            }
            function abi_encode_struct_AttendanceData(value, pos) -> end
            {
                let _1 := 0xffffffff
                mstore(pos, and(mload(value), _1))
                let _2 := 0x20
                mstore(add(pos, _2), and(mload(add(value, _2)), _1))
                mstore(add(pos, 0x40), and(mload(add(value, 0x40)), _1))
                let memberValue0 := mload(add(value, 0x60))
                mstore(add(pos, 0x60), 0x80)
                let memberValue0_1 := mload(memberValue0)
                mstore(add(pos, 0x80), 0x60)
                let memberValue0_2 := mload(memberValue0_1)
                mstore(add(pos, 224), 0x80)
                let tail := abi_encode_string(memberValue0_2, add(pos, 352))
                let memberValue0_3 := mload(add(memberValue0_1, _2))
                mstore(add(pos, 256), add(sub(tail, pos), not(223)))
                let tail_1 := abi_encode_string(memberValue0_3, tail)
                mstore(add(pos, 288), and(mload(add(memberValue0_1, 0x40)), _1))
                mstore(add(pos, 320), and(mload(add(memberValue0_1, 0x60)), _1))
                let memberValue0_4 := mload(add(memberValue0, _2))
                let _3 := not(127)
                mstore(add(pos, 160), add(sub(tail_1, pos), _3))
                let pos_1 := tail_1
                let length := mload(memberValue0_4)
                mstore(tail_1, length)
                pos_1 := add(tail_1, _2)
                let tail_2 := add(add(tail_1, shl(5, length)), _2)
                let srcPtr := add(memberValue0_4, _2)
                let i := 0
                for { } lt(i, length) { i := add(i, 1) }
                {
                    mstore(pos_1, add(sub(tail_2, tail_1), /** @src 0:1033:1034  "0" */ not(31)))
                    /// @src 0:682:10606  "contract AttendanceContract {..."
                    tail_2 := abi_encode_string(mload(srcPtr), tail_2)
                    srcPtr := add(srcPtr, _2)
                    pos_1 := add(pos_1, _2)
                }
                let memberValue0_5 := mload(add(memberValue0, 0x40))
                mstore(add(pos, 192), add(sub(tail_2, pos), _3))
                end := abi_encode_string(memberValue0_5, tail_2)
            }
            function abi_encode_array_struct_AttendanceData_dyn(value, pos) -> end
            {
                let pos_1 := pos
                let length := mload(value)
                mstore(pos, length)
                let _1 := 0x20
                pos := add(pos, 0x20)
                let tail := add(add(pos_1, shl(5, length)), 0x20)
                let srcPtr := add(value, 0x20)
                let i := /** @src -1:-1:-1 */ 0
                /// @src 0:682:10606  "contract AttendanceContract {..."
                for { } lt(i, length) { i := add(i, 1) }
                {
                    mstore(pos, add(sub(tail, pos_1), /** @src 0:1033:1034  "0" */ not(31)))
                    /// @src 0:682:10606  "contract AttendanceContract {..."
                    tail := abi_encode_struct_AttendanceData(mload(srcPtr), tail)
                    srcPtr := add(srcPtr, _1)
                    pos := add(pos, _1)
                }
                end := tail
            }
            function abi_decode_uint32_28923() -> value
            {
                value := calldataload(36)
                if iszero(eq(value, and(value, 0xffffffff))) { revert(0, 0) }
            }
            function abi_decode_uint32_28924() -> value
            {
                value := calldataload(68)
                if iszero(eq(value, and(value, 0xffffffff))) { revert(0, 0) }
            }
            function abi_decode_uint32(offset) -> value
            {
                value := calldataload(offset)
                if iszero(eq(value, and(value, 0xffffffff))) { revert(0, 0) }
            }
            function finalize_allocation_28925(memPtr)
            {
                let newFreePtr := add(memPtr, 96)
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr))
                {
                    mstore(0, shl(224, 0x4e487b71))
                    mstore(4, 0x41)
                    revert(0, 0x24)
                }
                mstore(64, newFreePtr)
            }
            function finalize_allocation_28926(memPtr)
            {
                let newFreePtr := add(memPtr, 128)
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr))
                {
                    mstore(0, shl(224, 0x4e487b71))
                    mstore(4, 0x41)
                    revert(0, 0x24)
                }
                mstore(64, newFreePtr)
            }
            function finalize_allocation(memPtr, size)
            {
                let newFreePtr := add(memPtr, and(add(size, 31), /** @src 0:1033:1034  "0" */ not(31)))
                /// @src 0:682:10606  "contract AttendanceContract {..."
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr))
                {
                    mstore(0, shl(224, 0x4e487b71))
                    mstore(4, 0x41)
                    revert(0, 0x24)
                }
                mstore(64, newFreePtr)
            }
            function abi_decode_string(offset, end) -> array
            {
                if iszero(slt(add(offset, 0x1f), end)) { revert(0, 0) }
                let _1 := calldataload(offset)
                if gt(_1, 0xffffffffffffffff)
                {
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 0:682:10606  "contract AttendanceContract {..." */ shl(224, 0x4e487b71))
                    mstore(4, 0x41)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x24)
                }
                let memPtr := mload(64)
                finalize_allocation(memPtr, add(and(add(_1, 0x1f), /** @src 0:1033:1034  "0" */ not(31)), /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x20))
                mstore(memPtr, _1)
                if gt(add(add(offset, _1), 0x20), end)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 0:682:10606  "contract AttendanceContract {..."
                calldatacopy(add(memPtr, 0x20), add(offset, 0x20), _1)
                mstore(add(add(memPtr, _1), 0x20), /** @src -1:-1:-1 */ 0)
                /// @src 0:682:10606  "contract AttendanceContract {..."
                array := memPtr
            }
            function array_allocation_size_array_string_dyn(length) -> size
            {
                if gt(length, 0xffffffffffffffff)
                {
                    mstore(0, shl(224, 0x4e487b71))
                    mstore(4, 0x41)
                    revert(0, 0x24)
                }
                size := add(shl(5, length), 0x20)
            }
            function abi_decode_uint256t_uint32t_uint32(dataEnd) -> value0, value1, value2
            {
                if slt(add(dataEnd, not(3)), 96) { revert(0, 0) }
                value0 := calldataload(4)
                let value := calldataload(36)
                let _1 := 0xffffffff
                if iszero(eq(value, and(value, _1)))
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 0:682:10606  "contract AttendanceContract {..."
                value1 := value
                let value_1 := calldataload(68)
                if iszero(eq(value_1, and(value_1, _1)))
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 0:682:10606  "contract AttendanceContract {..."
                value2 := value_1
            }
            function extract_byte_array_length(data) -> length
            {
                length := shr(1, data)
                let outOfPlaceEncoding := and(data, 1)
                if iszero(outOfPlaceEncoding) { length := and(length, 0x7f) }
                if eq(outOfPlaceEncoding, lt(length, 32))
                {
                    mstore(0, shl(224, 0x4e487b71))
                    mstore(4, 0x22)
                    revert(0, 0x24)
                }
            }
            function copy_array_from_storage_to_memory_string(slot) -> memPtr
            {
                memPtr := mload(64)
                let ret := /** @src -1:-1:-1 */ 0
                /// @src 0:682:10606  "contract AttendanceContract {..."
                let slotValue := sload(slot)
                let length := extract_byte_array_length(slotValue)
                mstore(memPtr, length)
                let _1 := 0x20
                let _2 := 1
                switch and(slotValue, 1)
                case 0 {
                    mstore(add(memPtr, _1), and(slotValue, not(255)))
                    ret := add(add(memPtr, shl(5, iszero(iszero(length)))), _1)
                }
                case 1 {
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 0:682:10606  "contract AttendanceContract {..." */ slot)
                    let dataPos := keccak256(/** @src -1:-1:-1 */ 0, /** @src 0:682:10606  "contract AttendanceContract {..." */ _1)
                    let i := /** @src -1:-1:-1 */ 0
                    /// @src 0:682:10606  "contract AttendanceContract {..."
                    for { } lt(i, length) { i := add(i, _1) }
                    {
                        mstore(add(add(memPtr, i), _1), sload(dataPos))
                        dataPos := add(dataPos, _2)
                    }
                    ret := add(add(memPtr, i), _1)
                }
                finalize_allocation(memPtr, sub(ret, memPtr))
            }
            function read_from_storage_reference_type_struct_AttendanceData(slot) -> value
            {
                let _1 := 64
                let memPtr := mload(_1)
                finalize_allocation_28926(memPtr)
                value := memPtr
                let _2 := sload(slot)
                let _3 := 0xffffffff
                mstore(memPtr, and(_2, _3))
                let _4 := 32
                mstore(add(memPtr, _4), and(shr(_4, _2), _3))
                mstore(add(memPtr, _1), and(shr(_1, _2), _3))
                let _5 := 1
                let memPtr_1 := mload(_1)
                finalize_allocation_28925(memPtr_1)
                let memPtr_2 := mload(_1)
                finalize_allocation_28926(memPtr_2)
                mstore(memPtr_2, copy_array_from_storage_to_memory_string(add(slot, 1)))
                mstore(add(memPtr_2, _4), copy_array_from_storage_to_memory_string(add(slot, 2)))
                let _6 := sload(add(slot, 3))
                mstore(add(memPtr_2, _1), and(_6, _3))
                mstore(add(memPtr_2, 96), and(shr(_4, _6), _3))
                mstore(memPtr_1, memPtr_2)
                let _7 := add(slot, 4)
                let length := sload(_7)
                let _8 := array_allocation_size_array_string_dyn(length)
                let memPtr_3 := mload(_1)
                finalize_allocation(memPtr_3, _8)
                mstore(memPtr_3, length)
                let mpos := memPtr_3
                mpos := add(memPtr_3, _4)
                mstore(/** @src -1:-1:-1 */ 0, /** @src 0:682:10606  "contract AttendanceContract {..." */ _7)
                let spos := keccak256(/** @src -1:-1:-1 */ 0, /** @src 0:682:10606  "contract AttendanceContract {..." */ _4)
                let i := /** @src -1:-1:-1 */ 0
                /// @src 0:682:10606  "contract AttendanceContract {..."
                for { } lt(i, length) { i := add(i, _5) }
                {
                    mstore(mpos, copy_array_from_storage_to_memory_string(spos))
                    mpos := add(mpos, _4)
                    spos := add(spos, _5)
                }
                mstore(add(memPtr_1, _4), memPtr_3)
                mstore(add(memPtr_1, _1), copy_array_from_storage_to_memory_string(add(slot, 5)))
                mstore(add(memPtr, 96), memPtr_1)
            }
            function require_helper_stringliteral_2d10(condition)
            {
                if iszero(condition)
                {
                    let memPtr := mload(64)
                    mstore(memPtr, /** @src 0:972:988  "24 * 60 * 60 - 1" */ shl(229, 4594637))
                    /// @src 0:682:10606  "contract AttendanceContract {..."
                    mstore(add(memPtr, 4), 32)
                    mstore(add(memPtr, 36), 19)
                    mstore(add(memPtr, 68), "Caller is not owner")
                    revert(memPtr, 100)
                }
            }
            /// @src 0:1141:1149  "99990101"
            function require_helper_stringliteral_7a37(condition)
            {
                if iszero(condition)
                {
                    let memPtr := /** @src 0:682:10606  "contract AttendanceContract {..." */ mload(64)
                    /// @src 0:1141:1149  "99990101"
                    mstore(memPtr, /** @src 0:972:988  "24 * 60 * 60 - 1" */ shl(229, 4594637))
                    /// @src 0:1141:1149  "99990101"
                    mstore(add(memPtr, 4), 32)
                    /// @src 0:682:10606  "contract AttendanceContract {..."
                    mstore(/** @src 0:1141:1149  "99990101" */ add(memPtr, 36), 42)
                    mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ add(/** @src 0:1141:1149  "99990101" */ memPtr, /** @src 0:682:10606  "contract AttendanceContract {..." */ 68), /** @src 0:1141:1149  "99990101" */ "Date must be less or equal than ")
                    mstore(add(memPtr, 100), "9999/01/01")
                    revert(memPtr, 132)
                }
            }
            /// @src 0:1196:1201  "10101"
            function require_helper_stringliteral_ace2(condition)
            {
                if iszero(condition)
                {
                    let memPtr := /** @src 0:682:10606  "contract AttendanceContract {..." */ mload(64)
                    /// @src 0:1196:1201  "10101"
                    mstore(memPtr, /** @src 0:972:988  "24 * 60 * 60 - 1" */ shl(229, 4594637))
                    /// @src 0:1196:1201  "10101"
                    mstore(add(memPtr, 4), 32)
                    /// @src 0:682:10606  "contract AttendanceContract {..."
                    mstore(/** @src 0:1196:1201  "10101" */ add(memPtr, 36), 40)
                    mstore(/** @src 0:682:10606  "contract AttendanceContract {..." */ add(/** @src 0:1196:1201  "10101" */ memPtr, /** @src 0:682:10606  "contract AttendanceContract {..." */ 68), /** @src 0:1196:1201  "10101" */ "Date must be large or equal than")
                    mstore(add(memPtr, 100), " 1/01/01")
                    revert(memPtr, 132)
                }
            }
            /// @src 0:1033:1034  "0"
            function storage_array_index_access_struct_AttendanceData__dyn_ptr(array, index) -> slot, offset
            {
                if iszero(lt(index, /** @src 0:682:10606  "contract AttendanceContract {..." */ sload(/** @src 0:1033:1034  "0" */ array)))
                {
                    mstore(0, /** @src 0:682:10606  "contract AttendanceContract {..." */ shl(224, 0x4e487b71))
                    /// @src 0:1033:1034  "0"
                    mstore(4, 0x32)
                    revert(0, 0x24)
                }
                /// @src 0:682:10606  "contract AttendanceContract {..."
                mstore(/** @src -1:-1:-1 */ 0, /** @src 0:682:10606  "contract AttendanceContract {..." */ array)
                let data := keccak256(/** @src -1:-1:-1 */ 0, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x20)
                /// @src 0:1033:1034  "0"
                slot := add(data, mul(index, 6))
                offset := /** @src -1:-1:-1 */ 0
            }
            /// @src 0:1033:1034  "0"
            function update_storage_value_offsett_uint32_to_t_uint32(slot, value)
            {
                let _1 := sload(slot)
                sstore(slot, or(and(_1, not(0xffffffff00000000)), and(shl(32, value), 0xffffffff00000000)))
            }
            function update_storage_value_offsett_uint32_to_uint32(slot, value)
            {
                let _1 := sload(slot)
                sstore(slot, or(and(_1, not(0xffffffff0000000000000000)), and(shl(64, value), 0xffffffff0000000000000000)))
            }
            function clear_storage_range_bytes1(start, end)
            {
                for { } lt(start, end) { start := add(start, 1) }
                { sstore(start, 0) }
            }
            function extract_used_part_and_set_length_of_short_byte_array(data, len) -> used
            {
                used := or(and(data, not(shr(shl(3, len), not(0)))), shl(1, len))
            }
            function copy_literal_to_memory_a2de31aaac541825fa8b564ea0988606adecd3b553070821b24b378102ebef2b() -> memPtr
            {
                /// @src 0:682:10606  "contract AttendanceContract {..."
                let memPtr_1 := mload(64)
                let newFreePtr := add(memPtr_1, 64)
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr_1))
                {
                    mstore(0, shl(224, 0x4e487b71))
                    mstore(4, 0x41)
                    revert(0, 0x24)
                }
                mstore(64, newFreePtr)
                /// @src 0:1033:1034  "0"
                mstore(memPtr_1, 16)
                memPtr := memPtr_1
                mstore(add(memPtr_1, 32), "REASON_CHECK_OUT")
            }
            /// @src 0:682:10606  "contract AttendanceContract {..."
            function allocate_and_zero_memory_struct_struct_AttendanceData() -> memPtr
            {
                let _1 := 64
                let memPtr_1 := mload(_1)
                finalize_allocation_28926(memPtr_1)
                memPtr := memPtr_1
                mstore(memPtr_1, /** @src -1:-1:-1 */ 0)
                /// @src 0:682:10606  "contract AttendanceContract {..."
                mstore(add(memPtr_1, 32), /** @src -1:-1:-1 */ 0)
                /// @src 0:682:10606  "contract AttendanceContract {..."
                mstore(add(memPtr_1, _1), /** @src -1:-1:-1 */ 0)
                /// @src 0:682:10606  "contract AttendanceContract {..."
                let _2 := 96
                let memPtr_2 := mload(_1)
                finalize_allocation_28925(memPtr_2)
                let memPtr_3 := mload(_1)
                finalize_allocation_28926(memPtr_3)
                mstore(memPtr_3, _2)
                mstore(add(memPtr_3, 32), _2)
                mstore(add(memPtr_3, _1), /** @src -1:-1:-1 */ 0)
                /// @src 0:682:10606  "contract AttendanceContract {..."
                mstore(add(memPtr_3, _2), /** @src -1:-1:-1 */ 0)
                /// @src 0:682:10606  "contract AttendanceContract {..."
                mstore(memPtr_2, memPtr_3)
                mstore(add(memPtr_2, 32), _2)
                mstore(add(memPtr_2, _1), _2)
                mstore(add(memPtr_1, _2), memPtr_2)
            }
            function memory_array_index_access_struct_AttendanceData_dyn(baseRef, index) -> addr
            {
                if iszero(lt(index, mload(baseRef)))
                {
                    /// @src 0:1033:1034  "0"
                    mstore(0, /** @src 0:682:10606  "contract AttendanceContract {..." */ shl(224, 0x4e487b71))
                    /// @src 0:1033:1034  "0"
                    mstore(4, 0x32)
                    revert(0, 0x24)
                }
                /// @src 0:682:10606  "contract AttendanceContract {..."
                addr := add(add(baseRef, shl(5, index)), 32)
            }
            function require_helper_stringliteral(condition)
            {
                if iszero(condition)
                {
                    let memPtr := mload(64)
                    mstore(memPtr, /** @src 0:972:988  "24 * 60 * 60 - 1" */ shl(229, 4594637))
                    /// @src 0:682:10606  "contract AttendanceContract {..."
                    mstore(add(memPtr, 4), 32)
                    mstore(add(memPtr, 36), 52)
                    mstore(add(memPtr, 68), "Checkout time must be less or eq")
                    mstore(add(memPtr, 100), "ual to 24h(24*60*60)")
                    revert(memPtr, 132)
                }
            }
            function require_helper_stringliteral_da3e(condition)
            {
                if iszero(condition)
                {
                    let memPtr := mload(64)
                    mstore(memPtr, /** @src 0:972:988  "24 * 60 * 60 - 1" */ shl(229, 4594637))
                    /// @src 0:682:10606  "contract AttendanceContract {..."
                    mstore(add(memPtr, 4), 32)
                    mstore(add(memPtr, 36), 33)
                    mstore(add(memPtr, 68), "Attendance of date does not exis")
                    mstore(add(memPtr, 100), "t")
                    revert(memPtr, 132)
                }
            }
            /// @ast-id 672 @src 0:9887:10203  "function addHistories(..."
            function fun_addHistories(var_employeeID, var_index, var_checkInTime, var_checkoutOutTime, var_reason_mpos)
            {
                /// @src 0:682:10606  "contract AttendanceContract {..."
                let memPtr := mload(64)
                finalize_allocation_28925(memPtr)
                let _1 := 0xffffffff
                mstore(memPtr, and(var_checkInTime, _1))
                /// @src 0:10099:10144  "History(checkInTime, checkoutOutTime, reason)"
                let _2 := 32
                let _3 := add(memPtr, _2)
                /// @src 0:682:10606  "contract AttendanceContract {..."
                mstore(_3, and(var_checkoutOutTime, _1))
                /// @src 0:10099:10144  "History(checkInTime, checkoutOutTime, reason)"
                let _4 := add(memPtr, /** @src 0:682:10606  "contract AttendanceContract {..." */ 64)
                mstore(_4, var_reason_mpos)
                mstore(/** @src -1:-1:-1 */ 0, /** @src 0:682:10606  "contract AttendanceContract {..." */ var_employeeID)
                mstore(/** @src 0:10099:10144  "History(checkInTime, checkoutOutTime, reason)" */ _2, /** @src 0:10154:10163  "histories" */ 0x03)
                /// @src 0:682:10606  "contract AttendanceContract {..."
                let dataSlot := keccak256(/** @src -1:-1:-1 */ 0, /** @src 0:682:10606  "contract AttendanceContract {..." */ 64)
                mstore(/** @src -1:-1:-1 */ 0, /** @src 0:682:10606  "contract AttendanceContract {..." */ var_index)
                mstore(/** @src 0:10099:10144  "History(checkInTime, checkoutOutTime, reason)" */ _2, /** @src 0:682:10606  "contract AttendanceContract {..." */ dataSlot)
                let dataSlot_1 := keccak256(/** @src -1:-1:-1 */ 0, /** @src 0:682:10606  "contract AttendanceContract {..." */ 64)
                let oldLen := sload(dataSlot_1)
                if iszero(lt(oldLen, 18446744073709551616))
                {
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 0:682:10606  "contract AttendanceContract {..." */ shl(224, 0x4e487b71))
                    mstore(4, 0x41)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x24)
                }
                let _5 := 1
                let _6 := add(oldLen, _5)
                sstore(dataSlot_1, _6)
                if iszero(lt(oldLen, _6))
                {
                    /// @src 0:1033:1034  "0"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 0:682:10606  "contract AttendanceContract {..." */ shl(224, 0x4e487b71))
                    /// @src 0:1033:1034  "0"
                    mstore(4, 0x32)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 0:1033:1034  "0" */ 0x24)
                }
                /// @src 0:682:10606  "contract AttendanceContract {..."
                mstore(/** @src -1:-1:-1 */ 0, /** @src 0:682:10606  "contract AttendanceContract {..." */ dataSlot_1)
                let data := keccak256(/** @src -1:-1:-1 */ 0, /** @src 0:10099:10144  "History(checkInTime, checkoutOutTime, reason)" */ _2)
                /// @src 0:682:10606  "contract AttendanceContract {..."
                let slot := add(data, shl(_5, oldLen))
                /// @src 0:1033:1034  "0"
                sstore(slot, or(and(sload(slot), not(/** @src 0:682:10606  "contract AttendanceContract {..." */ 0xffffffff)), and(/** @src 0:1033:1034  "0" */ mload(/** @src 0:682:10606  "contract AttendanceContract {..." */ memPtr), _1)))
                update_storage_value_offsett_uint32_to_t_uint32(slot, and(/** @src 0:1033:1034  "0" */ mload(/** @src 0:682:10606  "contract AttendanceContract {..." */ _3), _1))
                let memberSlot := add(slot, _5)
                let _7 := mload(_4)
                /// @src 0:1033:1034  "0"
                let newLen := /** @src 0:682:10606  "contract AttendanceContract {..." */ mload(/** @src 0:1033:1034  "0" */ _7)
                if gt(newLen, 0xffffffffffffffff)
                {
                    /// @src 0:682:10606  "contract AttendanceContract {..."
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 0:682:10606  "contract AttendanceContract {..." */ shl(224, 0x4e487b71))
                    mstore(4, 0x41)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 0:682:10606  "contract AttendanceContract {..." */ 0x24)
                }
                /// @src 0:1033:1034  "0"
                let _8 := extract_byte_array_length(sload(memberSlot))
                if gt(_8, 31)
                {
                    /// @src 0:682:10606  "contract AttendanceContract {..."
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 0:682:10606  "contract AttendanceContract {..." */ memberSlot)
                    let data_1 := keccak256(/** @src -1:-1:-1 */ 0, /** @src 0:10099:10144  "History(checkInTime, checkoutOutTime, reason)" */ _2)
                    /// @src 0:1033:1034  "0"
                    let deleteStart := add(data_1, shr(5, add(newLen, 31)))
                    if lt(newLen, /** @src 0:10099:10144  "History(checkInTime, checkoutOutTime, reason)" */ _2)
                    /// @src 0:1033:1034  "0"
                    { deleteStart := data_1 }
                    clear_storage_range_bytes1(deleteStart, add(data_1, shr(5, add(_8, 31))))
                }
                let srcOffset := /** @src -1:-1:-1 */ 0
                /// @src 0:1033:1034  "0"
                srcOffset := /** @src 0:10099:10144  "History(checkInTime, checkoutOutTime, reason)" */ _2
                /// @src 0:1033:1034  "0"
                switch gt(newLen, 31)
                case 1 {
                    let loopEnd := and(newLen, not(31))
                    /// @src 0:682:10606  "contract AttendanceContract {..."
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 0:682:10606  "contract AttendanceContract {..." */ memberSlot)
                    /// @src 0:1033:1034  "0"
                    let dstPtr := /** @src 0:682:10606  "contract AttendanceContract {..." */ keccak256(/** @src -1:-1:-1 */ 0, /** @src 0:10099:10144  "History(checkInTime, checkoutOutTime, reason)" */ _2)
                    /// @src 0:1033:1034  "0"
                    let i := /** @src -1:-1:-1 */ 0
                    /// @src 0:1033:1034  "0"
                    for { }
                    lt(i, loopEnd)
                    {
                        i := add(i, /** @src 0:10099:10144  "History(checkInTime, checkoutOutTime, reason)" */ _2)
                    }
                    /// @src 0:1033:1034  "0"
                    {
                        sstore(dstPtr, mload(add(_7, srcOffset)))
                        dstPtr := add(dstPtr, /** @src 0:682:10606  "contract AttendanceContract {..." */ _5)
                        /// @src 0:1033:1034  "0"
                        srcOffset := add(srcOffset, /** @src 0:10099:10144  "History(checkInTime, checkoutOutTime, reason)" */ _2)
                    }
                    /// @src 0:1033:1034  "0"
                    if lt(loopEnd, newLen)
                    {
                        let lastValue := mload(add(_7, srcOffset))
                        sstore(dstPtr, and(lastValue, not(shr(and(shl(/** @src 0:10154:10163  "histories" */ 0x03, /** @src 0:1033:1034  "0" */ newLen), 248), not(0)))))
                    }
                    sstore(memberSlot, add(shl(/** @src 0:682:10606  "contract AttendanceContract {..." */ _5, /** @src 0:1033:1034  "0" */ newLen), /** @src 0:682:10606  "contract AttendanceContract {..." */ _5))
                }
                default /// @src 0:1033:1034  "0"
                {
                    let value := /** @src -1:-1:-1 */ 0
                    /// @src 0:1033:1034  "0"
                    if newLen
                    {
                        value := mload(add(_7, srcOffset))
                    }
                    sstore(memberSlot, extract_used_part_and_set_length_of_short_byte_array(value, newLen))
                }
            }
        }
        data ".metadata" hex"a264697066735822122043c73271185f48965f99429596956f7350dbcf76e85230d0717e57fc5646208b64736f6c63430008190033"
    }
}
