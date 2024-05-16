// Code generated - DO NOT EDIT.
// This file is a generated binding and any manual changes will be lost.

package contract

import (
	"errors"
	"math/big"
	"strings"

	ethereum "github.com/ethereum/go-ethereum"
	"github.com/ethereum/go-ethereum/accounts/abi"
	"github.com/ethereum/go-ethereum/accounts/abi/bind"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core/types"
	"github.com/ethereum/go-ethereum/event"
)

// Reference imports to suppress errors if they are not otherwise used.
var (
	_ = errors.New
	_ = big.NewInt
	_ = strings.NewReader
	_ = ethereum.NotFound
	_ = bind.Bind
	_ = common.Big1
	_ = types.BloomLookup
	_ = event.NewSubscription
	_ = abi.ConvertType
)

// AddressInfo is an auto generated low-level Go binding around an user-defined struct.
type AddressInfo struct {
	Label   string
	Details string
	Lat     *big.Int
	Long    *big.Int
}

// AttendanceData is an auto generated low-level Go binding around an user-defined struct.
type AttendanceData struct {
	Date            uint32
	CheckInTime     uint32
	CheckOutTime    uint32
	ReleventDetails RelevantDetails
}

// History is an auto generated low-level Go binding around an user-defined struct.
type History struct {
	CheckInTime  uint32
	CheckOutTime uint32
	Reason       string
}

// RelevantDetails is an auto generated low-level Go binding around an user-defined struct.
type RelevantDetails struct {
	AddressInfo AddressInfo
	Imgs        []string
	Note        string
}

// ContractMetaData contains all meta data concerning the Contract contract.
var ContractMetaData = &bind.MetaData{
	ABI: "[{\"inputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"constructor\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":true,\"internalType\":\"address\",\"name\":\"oldOwner\",\"type\":\"address\"},{\"indexed\":true,\"internalType\":\"address\",\"name\":\"newOwner\",\"type\":\"address\"}],\"name\":\"OwnerSet\",\"type\":\"event\"},{\"inputs\":[{\"internalType\":\"address\",\"name\":\"newOwner\",\"type\":\"address\"}],\"name\":\"changeOwner\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"employeeID\",\"type\":\"uint256\"},{\"internalType\":\"uint32\",\"name\":\"date\",\"type\":\"uint32\"},{\"internalType\":\"uint32\",\"name\":\"checkInTime\",\"type\":\"uint32\"},{\"components\":[{\"components\":[{\"internalType\":\"string\",\"name\":\"label\",\"type\":\"string\"},{\"internalType\":\"string\",\"name\":\"details\",\"type\":\"string\"},{\"internalType\":\"int256\",\"name\":\"lat\",\"type\":\"int256\"},{\"internalType\":\"int256\",\"name\":\"long\",\"type\":\"int256\"}],\"internalType\":\"structAddressInfo\",\"name\":\"addressInfo\",\"type\":\"tuple\"},{\"internalType\":\"string[]\",\"name\":\"imgs\",\"type\":\"string[]\"},{\"internalType\":\"string\",\"name\":\"note\",\"type\":\"string\"}],\"internalType\":\"structRelevantDetails\",\"name\":\"relevantDetails\",\"type\":\"tuple\"}],\"name\":\"checkin\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"employeeID\",\"type\":\"uint256\"},{\"internalType\":\"uint32\",\"name\":\"date\",\"type\":\"uint32\"},{\"internalType\":\"uint32\",\"name\":\"checkOutTime\",\"type\":\"uint32\"}],\"name\":\"checkout\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"employeeID\",\"type\":\"uint256\"}],\"name\":\"getAllAttendanceByEmployeeID\",\"outputs\":[{\"components\":[{\"internalType\":\"uint32\",\"name\":\"date\",\"type\":\"uint32\"},{\"internalType\":\"uint32\",\"name\":\"checkInTime\",\"type\":\"uint32\"},{\"internalType\":\"uint32\",\"name\":\"checkOutTime\",\"type\":\"uint32\"},{\"components\":[{\"components\":[{\"internalType\":\"string\",\"name\":\"label\",\"type\":\"string\"},{\"internalType\":\"string\",\"name\":\"details\",\"type\":\"string\"},{\"internalType\":\"int256\",\"name\":\"lat\",\"type\":\"int256\"},{\"internalType\":\"int256\",\"name\":\"long\",\"type\":\"int256\"}],\"internalType\":\"structAddressInfo\",\"name\":\"addressInfo\",\"type\":\"tuple\"},{\"internalType\":\"string[]\",\"name\":\"imgs\",\"type\":\"string[]\"},{\"internalType\":\"string\",\"name\":\"note\",\"type\":\"string\"}],\"internalType\":\"structRelevantDetails\",\"name\":\"releventDetails\",\"type\":\"tuple\"}],\"internalType\":\"structAttendanceData[]\",\"name\":\"\",\"type\":\"tuple[]\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"employeeID\",\"type\":\"uint256\"},{\"internalType\":\"uint32\",\"name\":\"startDate\",\"type\":\"uint32\"},{\"internalType\":\"uint32\",\"name\":\"endDate\",\"type\":\"uint32\"}],\"name\":\"getAttendanceByRangeDate\",\"outputs\":[{\"internalType\":\"uint256\",\"name\":\"\",\"type\":\"uint256\"},{\"components\":[{\"internalType\":\"uint32\",\"name\":\"date\",\"type\":\"uint32\"},{\"internalType\":\"uint32\",\"name\":\"checkInTime\",\"type\":\"uint32\"},{\"internalType\":\"uint32\",\"name\":\"checkOutTime\",\"type\":\"uint32\"},{\"components\":[{\"components\":[{\"internalType\":\"string\",\"name\":\"label\",\"type\":\"string\"},{\"internalType\":\"string\",\"name\":\"details\",\"type\":\"string\"},{\"internalType\":\"int256\",\"name\":\"lat\",\"type\":\"int256\"},{\"internalType\":\"int256\",\"name\":\"long\",\"type\":\"int256\"}],\"internalType\":\"structAddressInfo\",\"name\":\"addressInfo\",\"type\":\"tuple\"},{\"internalType\":\"string[]\",\"name\":\"imgs\",\"type\":\"string[]\"},{\"internalType\":\"string\",\"name\":\"note\",\"type\":\"string\"}],\"internalType\":\"structRelevantDetails\",\"name\":\"releventDetails\",\"type\":\"tuple\"}],\"internalType\":\"structAttendanceData[]\",\"name\":\"\",\"type\":\"tuple[]\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"employeeID\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"index\",\"type\":\"uint256\"}],\"name\":\"getAttendanceDetail\",\"outputs\":[{\"components\":[{\"internalType\":\"uint32\",\"name\":\"date\",\"type\":\"uint32\"},{\"internalType\":\"uint32\",\"name\":\"checkInTime\",\"type\":\"uint32\"},{\"internalType\":\"uint32\",\"name\":\"checkOutTime\",\"type\":\"uint32\"},{\"components\":[{\"components\":[{\"internalType\":\"string\",\"name\":\"label\",\"type\":\"string\"},{\"internalType\":\"string\",\"name\":\"details\",\"type\":\"string\"},{\"internalType\":\"int256\",\"name\":\"lat\",\"type\":\"int256\"},{\"internalType\":\"int256\",\"name\":\"long\",\"type\":\"int256\"}],\"internalType\":\"structAddressInfo\",\"name\":\"addressInfo\",\"type\":\"tuple\"},{\"internalType\":\"string[]\",\"name\":\"imgs\",\"type\":\"string[]\"},{\"internalType\":\"string\",\"name\":\"note\",\"type\":\"string\"}],\"internalType\":\"structRelevantDetails\",\"name\":\"releventDetails\",\"type\":\"tuple\"}],\"internalType\":\"structAttendanceData\",\"name\":\"\",\"type\":\"tuple\"},{\"components\":[{\"internalType\":\"uint32\",\"name\":\"checkInTime\",\"type\":\"uint32\"},{\"internalType\":\"uint32\",\"name\":\"checkOutTime\",\"type\":\"uint32\"},{\"internalType\":\"string\",\"name\":\"reason\",\"type\":\"string\"}],\"internalType\":\"structHistory[]\",\"name\":\"\",\"type\":\"tuple[]\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[],\"name\":\"getOwner\",\"outputs\":[{\"internalType\":\"address\",\"name\":\"\",\"type\":\"address\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"employeeID\",\"type\":\"uint256\"},{\"internalType\":\"uint32\",\"name\":\"date\",\"type\":\"uint32\"},{\"internalType\":\"uint32\",\"name\":\"checkInTime\",\"type\":\"uint32\"},{\"internalType\":\"uint32\",\"name\":\"checkOutTime\",\"type\":\"uint32\"},{\"internalType\":\"string\",\"name\":\"reason\",\"type\":\"string\"}],\"name\":\"updateAttendanceRecord\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"}]",
	Bin: "0x6080604052348015600e575f80fd5b505f80546001600160a01b0319163390811782556040519091907f342827c97908e5e2f71151c08502a66d44b6f758e3ac2f1de95f02eb95f0a735908290a36124058061005a5f395ff3fe608060405234801561000f575f80fd5b5060043610610085575f3560e01c80639c81ca25116100585780639c81ca2514610102578063a6f9dae114610123578063fcf9199c14610136578063fd25569d14610149575f80fd5b8063132a2ba2146100895780632659fd67146100b257806353f7c5ef146100c7578063893d20e8146100e8575b5f80fd5b61009c610097366004611a9b565b61015c565b6040516100a99190611c43565b60405180910390f35b6100c56100c0366004611e06565b6104e4565b005b6100da6100d5366004611f41565b6107d1565b6040516100a9929190611f61565b5f546040516001600160a01b0390911681526020016100a9565b610115610110366004611ff8565b610bae565b6040516100a9929190612031565b6100c5610131366004612051565b61119c565b6100c5610144366004612077565b61121e565b6100c5610157366004611ff8565b61149c565b5f546060906001600160a01b031633146101915760405162461bcd60e51b8152600401610188906120eb565b60405180910390fd5b5f82815260016020908152604080832080548251818502810185019093528083529192909190849084015b828210156104d6575f8481526020908190206040805160808101825260078602909201805463ffffffff8082168552600160201b8204811695850195909552600160401b900490931682820152805160e081019091526001830180549293926060808601939291839182019083908290829061023790612118565b80601f016020809104026020016040519081016040528092919081815260200182805461026390612118565b80156102ae5780601f10610285576101008083540402835291602001916102ae565b820191905f5260205f20905b81548152906001019060200180831161029157829003601f168201915b505050505081526020016001820180546102c790612118565b80601f01602080910402602001604051908101604052809291908181526020018280546102f390612118565b801561033e5780601f106103155761010080835404028352916020019161033e565b820191905f5260205f20905b81548152906001019060200180831161032157829003601f168201915b5050505050815260200160028201548152602001600382015481525050815260200160048201805480602002602001604051908101604052809291908181526020015f905b8282101561042b578382905f5260205f200180546103a090612118565b80601f01602080910402602001604051908101604052809291908181526020018280546103cc90612118565b80156104175780601f106103ee57610100808354040283529160200191610417565b820191905f5260205f20905b8154815290600101906020018083116103fa57829003601f168201915b505050505081526020019060010190610383565b50505050815260200160058201805461044390612118565b80601f016020809104026020016040519081016040528092919081815260200182805461046f90612118565b80156104ba5780601f10610491576101008083540402835291602001916104ba565b820191905f5260205f20905b81548152906001019060200180831161049d57829003601f168201915b50505050508152505081525050815260200190600101906101bc565b50929450505050505b919050565b5f546001600160a01b0316331461050d5760405162461bcd60e51b8152600401610188906120eb565b6305f5ba5563ffffffff841611156105375760405162461bcd60e51b815260040161018890612150565b61277563ffffffff8416101561055f5760405162461bcd60e51b81526004016101889061219a565b6201517f63ffffffff831611156105d45760405162461bcd60e51b815260206004820152603360248201527f436865636b696e2074696d65206d757374206265206c657373206f7220657175604482015272616c20746f203234682832342a36302a36302960681b6064820152608401610188565b5f84815260026020908152604080832063ffffffff871684529091529020541561064b5760405162461bcd60e51b815260206004820152602260248201527f417474656e64616e63652068617320616c726561647920636865636b656420696044820152611b9d60f21b6064820152608401610188565b6040805160808101825263ffffffff808616825284811660208084019182525f848601818152606086018881528b835260018085529783208054808a0182559084529390922086516007909402018054945191518616600160401b026bffffffff000000000000000019928716600160201b0267ffffffffffffffff19909616949096169390931793909317929092169290921782555180518051939485949084019190829081906106fd908261222b565b5060208201516001820190610712908261222b565b506040820151600282015560609091015160039091015560208281015180516107419260048501920190611968565b5060408201516005820190610756908261222b565b5050505f878152600160208181526040808420546002835281852063ffffffff8c1686528352908420819055928a90528190526107ca935088925061079a916122fb565b855f6040518060400160405280601081526020016f14915054d3d397d0d21150d2d7d3d55560821b8152506117ad565b5050505050565b6107d96119bc565b5f546060906001600160a01b031633146108055760405162461bcd60e51b8152600401610188906120eb565b5f848152600160205260409020546108715760405162461bcd60e51b815260206004820152602960248201527f456d706c6f79656520494420646f6573206e6f7420657869737420696e20617460448201526874656e64616e63657360b81b6064820152608401610188565b5f8481526001602052604081208054859081106108905761089061230e565b5f918252602091829020604080516080810182526007909302909101805463ffffffff8082168552600160201b8204811695850195909552600160401b900490931682820152805160e081019091526001830180549293926060808601939291839182019083908290829061090490612118565b80601f016020809104026020016040519081016040528092919081815260200182805461093090612118565b801561097b5780601f106109525761010080835404028352916020019161097b565b820191905f5260205f20905b81548152906001019060200180831161095e57829003601f168201915b5050505050815260200160018201805461099490612118565b80601f01602080910402602001604051908101604052809291908181526020018280546109c090612118565b8015610a0b5780601f106109e257610100808354040283529160200191610a0b565b820191905f5260205f20905b8154815290600101906020018083116109ee57829003601f168201915b5050505050815260200160028201548152602001600382015481525050815260200160048201805480602002602001604051908101604052809291908181526020015f905b82821015610af8578382905f5260205f20018054610a6d90612118565b80601f0160208091040260200160405190810160405280929190818152602001828054610a9990612118565b8015610ae45780601f10610abb57610100808354040283529160200191610ae4565b820191905f5260205f20905b815481529060010190602001808311610ac757829003601f168201915b505050505081526020019060010190610a50565b505050508152602001600582018054610b1090612118565b80601f0160208091040260200160405190810160405280929190818152602001828054610b3c90612118565b8015610b875780601f10610b5e57610100808354040283529160200191610b87565b820191905f5260205f20905b815481529060010190602001808311610b6a57829003601f168201915b5050505050815250508152505090505f610ba18686611842565b9196919550909350505050565b5f80546060906001600160a01b03163314610bdb5760405162461bcd60e51b8152600401610188906120eb565b61277563ffffffff85161015610c4a5760405162461bcd60e51b815260206004820152602e60248201527f53746172742044617465206d757374206265206c61726765206f72206571756160448201526d6c207468616e20312f30312f303160901b6064820152608401610188565b6305f5ba5563ffffffff84161115610cbb5760405162461bcd60e51b815260206004820152602e60248201527f456e642044617465206d757374206265206c657373206f7220657175616c207460448201526d68616e20393939392f30312f303160901b6064820152608401610188565b8263ffffffff168463ffffffff161115610d2e5760405162461bcd60e51b815260206004820152602e60248201527f53746172742064617465206d757374206265206265666f7265206f722065717560448201526d616c20746f20656e64206461746560901b6064820152608401610188565b5f85815260016020908152604080832080548251818502810185019093528083529192909190849084015b82821015611073575f8481526020908190206040805160808101825260078602909201805463ffffffff8082168552600160201b8204811695850195909552600160401b900490931682820152805160e0810190915260018301805492939260608086019392918391820190839082908290610dd490612118565b80601f0160208091040260200160405190810160405280929190818152602001828054610e0090612118565b8015610e4b5780601f10610e2257610100808354040283529160200191610e4b565b820191905f5260205f20905b815481529060010190602001808311610e2e57829003601f168201915b50505050508152602001600182018054610e6490612118565b80601f0160208091040260200160405190810160405280929190818152602001828054610e9090612118565b8015610edb5780601f10610eb257610100808354040283529160200191610edb565b820191905f5260205f20905b815481529060010190602001808311610ebe57829003601f168201915b5050505050815260200160028201548152602001600382015481525050815260200160048201805480602002602001604051908101604052809291908181526020015f905b82821015610fc8578382905f5260205f20018054610f3d90612118565b80601f0160208091040260200160405190810160405280929190818152602001828054610f6990612118565b8015610fb45780601f10610f8b57610100808354040283529160200191610fb4565b820191905f5260205f20905b815481529060010190602001808311610f9757829003601f168201915b505050505081526020019060010190610f20565b505050508152602001600582018054610fe090612118565b80601f016020809104026020016040519081016040528092919081815260200182805461100c90612118565b80156110575780601f1061102e57610100808354040283529160200191611057565b820191905f5260205f20905b81548152906001019060200180831161103a57829003601f168201915b5050505050815250508152505081526020019060010190610d59565b5050505090505f815167ffffffffffffffff81111561109457611094611c6f565b6040519080825280602002602001820160405280156110cd57816020015b6110ba6119bc565b8152602001906001900390816110b25790505b5090505f805b835181101561118f578763ffffffff168482815181106110f5576110f561230e565b60200260200101515f015163ffffffff161015801561113c57508663ffffffff168482815181106111285761112861230e565b60200260200101515f015163ffffffff1611155b15611187578381815181106111535761115361230e565b602002602001015183838151811061116d5761116d61230e565b6020026020010181905250818061118390612322565b9250505b6001016110d3565b5097909650945050505050565b5f546001600160a01b031633146111c55760405162461bcd60e51b8152600401610188906120eb565b5f80546040516001600160a01b03808516939216917f342827c97908e5e2f71151c08502a66d44b6f758e3ac2f1de95f02eb95f0a73591a35f80546001600160a01b0319166001600160a01b0392909216919091179055565b5f546001600160a01b031633146112475760405162461bcd60e51b8152600401610188906120eb565b6305f5ba5563ffffffff851611156112715760405162461bcd60e51b815260040161018890612150565b61277563ffffffff851610156112995760405162461bcd60e51b81526004016101889061219a565b6201517f63ffffffff831611156112c25760405162461bcd60e51b81526004016101889061233a565b8163ffffffff168363ffffffff1611156113325760405162461bcd60e51b815260206004820152602b60248201527f436865636b696e742074696d65206d757374206265206c65737320746f20436860448201526a65636b6f75742074696d6560a81b6064820152608401610188565b5f85815260026020908152604080832063ffffffff88168452909152812054900361136f5760405162461bcd60e51b81526004016101889061238e565b5f85815260026020908152604080832063ffffffff8816845290915281205461139a906001906122fb565b5f87815260016020526040902080549192508691839081106113be576113be61230e565b905f5260205f2090600702015f015f6101000a81548163ffffffff021916908363ffffffff1602179055508360015f8881526020019081526020015f20828154811061140c5761140c61230e565b905f5260205f2090600702015f0160046101000a81548163ffffffff021916908363ffffffff1602179055508260015f8881526020019081526020015f20828154811061145b5761145b61230e565b905f5260205f2090600702015f0160086101000a81548163ffffffff021916908363ffffffff16021790555061149486828686866117ad565b505050505050565b5f546001600160a01b031633146114c55760405162461bcd60e51b8152600401610188906120eb565b6305f5ba5563ffffffff831611156114ef5760405162461bcd60e51b815260040161018890612150565b61277563ffffffff831610156115175760405162461bcd60e51b81526004016101889061219a565b6201517f63ffffffff821611156115405760405162461bcd60e51b81526004016101889061233a565b5f83815260026020908152604080832063ffffffff86168452909152812054900361157d5760405162461bcd60e51b81526004016101889061238e565b5f83815260026020908152604080832063ffffffff861684529091528120546115a8906001906122fb565b5f858152600160205260409020805491925090829081106115cb576115cb61230e565b5f91825260209091206007909102015463ffffffff600160201b9091048116908316116116505760405162461bcd60e51b815260206004820152602d60248201527f436865636b6f75742074696d65206d757374206265206c61726765207468616e60448201526c20636865636b696e2074696d6560981b6064820152608401610188565b5f84815260016020526040902080548290811061166f5761166f61230e565b5f918252602090912060079091020154600160401b900463ffffffff16156116e45760405162461bcd60e51b815260206004820152602260248201527f417474656e64616e63652068617320616c726561647920636865636b6564206f6044820152611d5d60f21b6064820152608401610188565b5f8481526001602052604090208054839190839081106117065761170661230e565b905f5260205f2090600702015f0160086101000a81548163ffffffff021916908363ffffffff1602179055506117a7848260015f8881526020019081526020015f2084815481106117595761175961230e565b905f5260205f2090600702015f0160049054906101000a900463ffffffff16856040518060400160405280601081526020016f14915054d3d397d0d21150d2d7d3d55560821b8152506117ad565b50505050565b6040805160608101825263ffffffff808616825284811660208084019182528385018681525f8b8152600383528681208b82528352958620805460018181018355918852929096208551600290930201805493518516600160201b0267ffffffffffffffff199094169290941691909117919091178255519192839290820190611837908261222b565b505050505050505050565b5f8281526003602090815260408083208484528252808320805482518185028101850190935280835260609492939192909184015b8282101561195b575f8481526020908190206040805160608101825260028602909201805463ffffffff8082168552600160201b9091041693830193909352600183018054929392918401916118cc90612118565b80601f01602080910402602001604051908101604052809291908181526020018280546118f890612118565b80156119435780601f1061191a57610100808354040283529160200191611943565b820191905f5260205f20905b81548152906001019060200180831161192657829003601f168201915b50505050508152505081526020019060010190611877565b5050505090505b92915050565b828054828255905f5260205f209081019282156119ac579160200282015b828111156119ac578251829061199c908261222b565b5091602001919060010190611986565b506119b89291506119e9565b5090565b604080516080810182525f8082526020820181905291810191909152606081016119e4611a05565b905290565b808211156119b8575f6119fc8282611a4d565b506001016119e9565b6040518060600160405280611a39604051806080016040528060608152602001606081526020015f81526020015f81525090565b815260200160608152602001606081525090565b508054611a5990612118565b5f825580601f10611a68575050565b601f0160209004905f5260205f2090810190611a849190611a87565b50565b5b808211156119b8575f8155600101611a88565b5f60208284031215611aab575f80fd5b5035919050565b5f81518084528060208401602086015e5f602082860101526020601f19601f83011685010191505092915050565b5f63ffffffff80835116845260208181850151168186015281604085015116604086015260608401519150608060608601528151606060808701528051608060e0880152611b32610160880182611ab2565b90508282015160df1988830301610100890152611b4f8282611ab2565b60408401516101208a0152606090930151610140890152505081830151607f19878303810160a08901528151808452918401929184830190600581901b840186015f5b82811015611bc057601f19868303018452611bae828851611ab2565b96880196938801939150600101611b92565b5060408801519750838b82030160c08c0152611bdc8189611ab2565b9b9a5050505050505050505050565b5f8282518085526020808601955060208260051b840101602086015f5b84811015611c3657601f19868403018952611c24838351611ae0565b98840198925090830190600101611c08565b5090979650505050505050565b602081525f611c556020830184611beb565b9392505050565b803563ffffffff811681146104df575f80fd5b634e487b7160e01b5f52604160045260245ffd5b6040516060810167ffffffffffffffff81118282101715611ca657611ca6611c6f565b60405290565b6040516080810167ffffffffffffffff81118282101715611ca657611ca6611c6f565b604051601f8201601f1916810167ffffffffffffffff81118282101715611cf857611cf8611c6f565b604052919050565b5f82601f830112611d0f575f80fd5b813567ffffffffffffffff811115611d2957611d29611c6f565b611d3c601f8201601f1916602001611ccf565b818152846020838601011115611d50575f80fd5b816020850160208301375f918101602001919091529392505050565b5f82601f830112611d7b575f80fd5b8135602067ffffffffffffffff80831115611d9857611d98611c6f565b8260051b611da7838201611ccf565b9384528581018301938381019088861115611dc0575f80fd5b84880192505b85831015611dfa57823584811115611ddc575f80fd5b611dea8a87838c0101611d00565b8352509184019190840190611dc6565b98975050505050505050565b5f805f8060808587031215611e19575f80fd5b84359350611e2960208601611c5c565b9250611e3760408601611c5c565b9150606085013567ffffffffffffffff80821115611e53575f80fd5b9086019060608289031215611e66575f80fd5b611e6e611c83565b823582811115611e7c575f80fd5b83016080818b031215611e8d575f80fd5b611e95611cac565b813584811115611ea3575f80fd5b611eaf8c828501611d00565b825250602082013584811115611ec3575f80fd5b611ecf8c828501611d00565b60208301525060408201356040820152606082013560608201528083525050602083013582811115611eff575f80fd5b611f0b8a828601611d6c565b602083015250604083013582811115611f22575f80fd5b611f2e8a828601611d00565b6040830152509598949750929550505050565b5f8060408385031215611f52575f80fd5b50508035926020909101359150565b5f6040808352611f746040840186611ae0565b6020848203818601528186518084528284019150828160051b8501018389015f5b83811015611fe857868303601f190185528151805163ffffffff90811685528782015116878501528801516060898501819052611fd481860183611ab2565b968801969450505090850190600101611f95565b50909a9950505050505050505050565b5f805f6060848603121561200a575f80fd5b8335925061201a60208501611c5c565b915061202860408501611c5c565b90509250925092565b828152604060208201525f6120496040830184611beb565b949350505050565b5f60208284031215612061575f80fd5b81356001600160a01b0381168114611c55575f80fd5b5f805f805f60a0868803121561208b575f80fd5b8535945061209b60208701611c5c565b93506120a960408701611c5c565b92506120b760608701611c5c565b9150608086013567ffffffffffffffff8111156120d2575f80fd5b6120de88828901611d00565b9150509295509295909350565b60208082526013908201527221b0b63632b91034b9903737ba1037bbb732b960691b604082015260600190565b600181811c9082168061212c57607f821691505b60208210810361214a57634e487b7160e01b5f52602260045260245ffd5b50919050565b6020808252602a908201527f44617465206d757374206265206c657373206f7220657175616c207468616e20604082015269393939392f30312f303160b01b606082015260800190565b60208082526028908201527f44617465206d757374206265206c61726765206f7220657175616c207468616e60408201526720312f30312f303160c01b606082015260800190565b601f82111561222657805f5260205f20601f840160051c810160208510156122075750805b601f840160051c820191505b818110156107ca575f8155600101612213565b505050565b815167ffffffffffffffff81111561224557612245611c6f565b612259816122538454612118565b846121e2565b602080601f83116001811461228c575f84156122755750858301515b5f19600386901b1c1916600185901b178555611494565b5f85815260208120601f198616915b828110156122ba5788860151825594840194600190910190840161229b565b50858210156122d757878501515f19600388901b60f8161c191681555b5050505050600190811b01905550565b634e487b7160e01b5f52601160045260245ffd5b81810381811115611962576119626122e7565b634e487b7160e01b5f52603260045260245ffd5b5f60018201612333576123336122e7565b5060010190565b60208082526034908201527f436865636b6f75742074696d65206d757374206265206c657373206f7220657160408201527375616c20746f203234682832342a36302a36302960601b606082015260800190565b60208082526021908201527f417474656e64616e6365206f66206461746520646f6573206e6f7420657869736040820152601d60fa1b60608201526080019056fea2646970667358221220cdfa5bcc82947f4430f0992127d01b495e3e6c53f278ceaac60d40279c35d66c64736f6c63430008190033",
}

// ContractABI is the input ABI used to generate the binding from.
// Deprecated: Use ContractMetaData.ABI instead.
var ContractABI = ContractMetaData.ABI

// ContractBin is the compiled bytecode used for deploying new contracts.
// Deprecated: Use ContractMetaData.Bin instead.
var ContractBin = ContractMetaData.Bin

// DeployContract deploys a new Ethereum contract, binding an instance of Contract to it.
func DeployContract(auth *bind.TransactOpts, backend bind.ContractBackend) (common.Address, *types.Transaction, *Contract, error) {
	parsed, err := ContractMetaData.GetAbi()
	if err != nil {
		return common.Address{}, nil, nil, err
	}
	if parsed == nil {
		return common.Address{}, nil, nil, errors.New("GetABI returned nil")
	}

	address, tx, contract, err := bind.DeployContract(auth, *parsed, common.FromHex(ContractBin), backend)
	if err != nil {
		return common.Address{}, nil, nil, err
	}
	return address, tx, &Contract{ContractCaller: ContractCaller{contract: contract}, ContractTransactor: ContractTransactor{contract: contract}, ContractFilterer: ContractFilterer{contract: contract}}, nil
}

// Contract is an auto generated Go binding around an Ethereum contract.
type Contract struct {
	ContractCaller     // Read-only binding to the contract
	ContractTransactor // Write-only binding to the contract
	ContractFilterer   // Log filterer for contract events
}

// ContractCaller is an auto generated read-only Go binding around an Ethereum contract.
type ContractCaller struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// ContractTransactor is an auto generated write-only Go binding around an Ethereum contract.
type ContractTransactor struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// ContractFilterer is an auto generated log filtering Go binding around an Ethereum contract events.
type ContractFilterer struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// ContractSession is an auto generated Go binding around an Ethereum contract,
// with pre-set call and transact options.
type ContractSession struct {
	Contract     *Contract         // Generic contract binding to set the session for
	CallOpts     bind.CallOpts     // Call options to use throughout this session
	TransactOpts bind.TransactOpts // Transaction auth options to use throughout this session
}

// ContractCallerSession is an auto generated read-only Go binding around an Ethereum contract,
// with pre-set call options.
type ContractCallerSession struct {
	Contract *ContractCaller // Generic contract caller binding to set the session for
	CallOpts bind.CallOpts   // Call options to use throughout this session
}

// ContractTransactorSession is an auto generated write-only Go binding around an Ethereum contract,
// with pre-set transact options.
type ContractTransactorSession struct {
	Contract     *ContractTransactor // Generic contract transactor binding to set the session for
	TransactOpts bind.TransactOpts   // Transaction auth options to use throughout this session
}

// ContractRaw is an auto generated low-level Go binding around an Ethereum contract.
type ContractRaw struct {
	Contract *Contract // Generic contract binding to access the raw methods on
}

// ContractCallerRaw is an auto generated low-level read-only Go binding around an Ethereum contract.
type ContractCallerRaw struct {
	Contract *ContractCaller // Generic read-only contract binding to access the raw methods on
}

// ContractTransactorRaw is an auto generated low-level write-only Go binding around an Ethereum contract.
type ContractTransactorRaw struct {
	Contract *ContractTransactor // Generic write-only contract binding to access the raw methods on
}

// NewContract creates a new instance of Contract, bound to a specific deployed contract.
func NewContract(address common.Address, backend bind.ContractBackend) (*Contract, error) {
	contract, err := bindContract(address, backend, backend, backend)
	if err != nil {
		return nil, err
	}
	return &Contract{ContractCaller: ContractCaller{contract: contract}, ContractTransactor: ContractTransactor{contract: contract}, ContractFilterer: ContractFilterer{contract: contract}}, nil
}

// NewContractCaller creates a new read-only instance of Contract, bound to a specific deployed contract.
func NewContractCaller(address common.Address, caller bind.ContractCaller) (*ContractCaller, error) {
	contract, err := bindContract(address, caller, nil, nil)
	if err != nil {
		return nil, err
	}
	return &ContractCaller{contract: contract}, nil
}

// NewContractTransactor creates a new write-only instance of Contract, bound to a specific deployed contract.
func NewContractTransactor(address common.Address, transactor bind.ContractTransactor) (*ContractTransactor, error) {
	contract, err := bindContract(address, nil, transactor, nil)
	if err != nil {
		return nil, err
	}
	return &ContractTransactor{contract: contract}, nil
}

// NewContractFilterer creates a new log filterer instance of Contract, bound to a specific deployed contract.
func NewContractFilterer(address common.Address, filterer bind.ContractFilterer) (*ContractFilterer, error) {
	contract, err := bindContract(address, nil, nil, filterer)
	if err != nil {
		return nil, err
	}
	return &ContractFilterer{contract: contract}, nil
}

// bindContract binds a generic wrapper to an already deployed contract.
func bindContract(address common.Address, caller bind.ContractCaller, transactor bind.ContractTransactor, filterer bind.ContractFilterer) (*bind.BoundContract, error) {
	parsed, err := ContractMetaData.GetAbi()
	if err != nil {
		return nil, err
	}
	return bind.NewBoundContract(address, *parsed, caller, transactor, filterer), nil
}

// Call invokes the (constant) contract method with params as input values and
// sets the output to result. The result type might be a single field for simple
// returns, a slice of interfaces for anonymous returns and a struct for named
// returns.
func (_Contract *ContractRaw) Call(opts *bind.CallOpts, result *[]interface{}, method string, params ...interface{}) error {
	return _Contract.Contract.ContractCaller.contract.Call(opts, result, method, params...)
}

// Transfer initiates a plain transaction to move funds to the contract, calling
// its default method if one is available.
func (_Contract *ContractRaw) Transfer(opts *bind.TransactOpts) (*types.Transaction, error) {
	return _Contract.Contract.ContractTransactor.contract.Transfer(opts)
}

// Transact invokes the (paid) contract method with params as input values.
func (_Contract *ContractRaw) Transact(opts *bind.TransactOpts, method string, params ...interface{}) (*types.Transaction, error) {
	return _Contract.Contract.ContractTransactor.contract.Transact(opts, method, params...)
}

// Call invokes the (constant) contract method with params as input values and
// sets the output to result. The result type might be a single field for simple
// returns, a slice of interfaces for anonymous returns and a struct for named
// returns.
func (_Contract *ContractCallerRaw) Call(opts *bind.CallOpts, result *[]interface{}, method string, params ...interface{}) error {
	return _Contract.Contract.contract.Call(opts, result, method, params...)
}

// Transfer initiates a plain transaction to move funds to the contract, calling
// its default method if one is available.
func (_Contract *ContractTransactorRaw) Transfer(opts *bind.TransactOpts) (*types.Transaction, error) {
	return _Contract.Contract.contract.Transfer(opts)
}

// Transact invokes the (paid) contract method with params as input values.
func (_Contract *ContractTransactorRaw) Transact(opts *bind.TransactOpts, method string, params ...interface{}) (*types.Transaction, error) {
	return _Contract.Contract.contract.Transact(opts, method, params...)
}

// GetAllAttendanceByEmployeeID is a free data retrieval call binding the contract method 0x132a2ba2.
//
// Solidity: function getAllAttendanceByEmployeeID(uint256 employeeID) view returns((uint32,uint32,uint32,((string,string,int256,int256),string[],string))[])
func (_Contract *ContractCaller) GetAllAttendanceByEmployeeID(opts *bind.CallOpts, employeeID *big.Int) ([]AttendanceData, error) {
	var out []interface{}
	err := _Contract.contract.Call(opts, &out, "getAllAttendanceByEmployeeID", employeeID)

	if err != nil {
		return *new([]AttendanceData), err
	}

	out0 := *abi.ConvertType(out[0], new([]AttendanceData)).(*[]AttendanceData)

	return out0, err

}

// GetAllAttendanceByEmployeeID is a free data retrieval call binding the contract method 0x132a2ba2.
//
// Solidity: function getAllAttendanceByEmployeeID(uint256 employeeID) view returns((uint32,uint32,uint32,((string,string,int256,int256),string[],string))[])
func (_Contract *ContractSession) GetAllAttendanceByEmployeeID(employeeID *big.Int) ([]AttendanceData, error) {
	return _Contract.Contract.GetAllAttendanceByEmployeeID(&_Contract.CallOpts, employeeID)
}

// GetAllAttendanceByEmployeeID is a free data retrieval call binding the contract method 0x132a2ba2.
//
// Solidity: function getAllAttendanceByEmployeeID(uint256 employeeID) view returns((uint32,uint32,uint32,((string,string,int256,int256),string[],string))[])
func (_Contract *ContractCallerSession) GetAllAttendanceByEmployeeID(employeeID *big.Int) ([]AttendanceData, error) {
	return _Contract.Contract.GetAllAttendanceByEmployeeID(&_Contract.CallOpts, employeeID)
}

// GetAttendanceByRangeDate is a free data retrieval call binding the contract method 0x9c81ca25.
//
// Solidity: function getAttendanceByRangeDate(uint256 employeeID, uint32 startDate, uint32 endDate) view returns(uint256, (uint32,uint32,uint32,((string,string,int256,int256),string[],string))[])
func (_Contract *ContractCaller) GetAttendanceByRangeDate(opts *bind.CallOpts, employeeID *big.Int, startDate uint32, endDate uint32) (*big.Int, []AttendanceData, error) {
	var out []interface{}
	err := _Contract.contract.Call(opts, &out, "getAttendanceByRangeDate", employeeID, startDate, endDate)

	if err != nil {
		return *new(*big.Int), *new([]AttendanceData), err
	}

	out0 := *abi.ConvertType(out[0], new(*big.Int)).(**big.Int)
	out1 := *abi.ConvertType(out[1], new([]AttendanceData)).(*[]AttendanceData)

	return out0, out1, err

}

// GetAttendanceByRangeDate is a free data retrieval call binding the contract method 0x9c81ca25.
//
// Solidity: function getAttendanceByRangeDate(uint256 employeeID, uint32 startDate, uint32 endDate) view returns(uint256, (uint32,uint32,uint32,((string,string,int256,int256),string[],string))[])
func (_Contract *ContractSession) GetAttendanceByRangeDate(employeeID *big.Int, startDate uint32, endDate uint32) (*big.Int, []AttendanceData, error) {
	return _Contract.Contract.GetAttendanceByRangeDate(&_Contract.CallOpts, employeeID, startDate, endDate)
}

// GetAttendanceByRangeDate is a free data retrieval call binding the contract method 0x9c81ca25.
//
// Solidity: function getAttendanceByRangeDate(uint256 employeeID, uint32 startDate, uint32 endDate) view returns(uint256, (uint32,uint32,uint32,((string,string,int256,int256),string[],string))[])
func (_Contract *ContractCallerSession) GetAttendanceByRangeDate(employeeID *big.Int, startDate uint32, endDate uint32) (*big.Int, []AttendanceData, error) {
	return _Contract.Contract.GetAttendanceByRangeDate(&_Contract.CallOpts, employeeID, startDate, endDate)
}

// GetAttendanceDetail is a free data retrieval call binding the contract method 0x53f7c5ef.
//
// Solidity: function getAttendanceDetail(uint256 employeeID, uint256 index) view returns((uint32,uint32,uint32,((string,string,int256,int256),string[],string)), (uint32,uint32,string)[])
func (_Contract *ContractCaller) GetAttendanceDetail(opts *bind.CallOpts, employeeID *big.Int, index *big.Int) (AttendanceData, []History, error) {
	var out []interface{}
	err := _Contract.contract.Call(opts, &out, "getAttendanceDetail", employeeID, index)

	if err != nil {
		return *new(AttendanceData), *new([]History), err
	}

	out0 := *abi.ConvertType(out[0], new(AttendanceData)).(*AttendanceData)
	out1 := *abi.ConvertType(out[1], new([]History)).(*[]History)

	return out0, out1, err

}

// GetAttendanceDetail is a free data retrieval call binding the contract method 0x53f7c5ef.
//
// Solidity: function getAttendanceDetail(uint256 employeeID, uint256 index) view returns((uint32,uint32,uint32,((string,string,int256,int256),string[],string)), (uint32,uint32,string)[])
func (_Contract *ContractSession) GetAttendanceDetail(employeeID *big.Int, index *big.Int) (AttendanceData, []History, error) {
	return _Contract.Contract.GetAttendanceDetail(&_Contract.CallOpts, employeeID, index)
}

// GetAttendanceDetail is a free data retrieval call binding the contract method 0x53f7c5ef.
//
// Solidity: function getAttendanceDetail(uint256 employeeID, uint256 index) view returns((uint32,uint32,uint32,((string,string,int256,int256),string[],string)), (uint32,uint32,string)[])
func (_Contract *ContractCallerSession) GetAttendanceDetail(employeeID *big.Int, index *big.Int) (AttendanceData, []History, error) {
	return _Contract.Contract.GetAttendanceDetail(&_Contract.CallOpts, employeeID, index)
}

// GetOwner is a free data retrieval call binding the contract method 0x893d20e8.
//
// Solidity: function getOwner() view returns(address)
func (_Contract *ContractCaller) GetOwner(opts *bind.CallOpts) (common.Address, error) {
	var out []interface{}
	err := _Contract.contract.Call(opts, &out, "getOwner")

	if err != nil {
		return *new(common.Address), err
	}

	out0 := *abi.ConvertType(out[0], new(common.Address)).(*common.Address)

	return out0, err

}

// GetOwner is a free data retrieval call binding the contract method 0x893d20e8.
//
// Solidity: function getOwner() view returns(address)
func (_Contract *ContractSession) GetOwner() (common.Address, error) {
	return _Contract.Contract.GetOwner(&_Contract.CallOpts)
}

// GetOwner is a free data retrieval call binding the contract method 0x893d20e8.
//
// Solidity: function getOwner() view returns(address)
func (_Contract *ContractCallerSession) GetOwner() (common.Address, error) {
	return _Contract.Contract.GetOwner(&_Contract.CallOpts)
}

// ChangeOwner is a paid mutator transaction binding the contract method 0xa6f9dae1.
//
// Solidity: function changeOwner(address newOwner) returns()
func (_Contract *ContractTransactor) ChangeOwner(opts *bind.TransactOpts, newOwner common.Address) (*types.Transaction, error) {
	return _Contract.contract.Transact(opts, "changeOwner", newOwner)
}

// ChangeOwner is a paid mutator transaction binding the contract method 0xa6f9dae1.
//
// Solidity: function changeOwner(address newOwner) returns()
func (_Contract *ContractSession) ChangeOwner(newOwner common.Address) (*types.Transaction, error) {
	return _Contract.Contract.ChangeOwner(&_Contract.TransactOpts, newOwner)
}

// ChangeOwner is a paid mutator transaction binding the contract method 0xa6f9dae1.
//
// Solidity: function changeOwner(address newOwner) returns()
func (_Contract *ContractTransactorSession) ChangeOwner(newOwner common.Address) (*types.Transaction, error) {
	return _Contract.Contract.ChangeOwner(&_Contract.TransactOpts, newOwner)
}

// CheckIn is a paid mutator transaction binding the contract method 0x2659fd67.
//
// Solidity: function checkin(uint256 employeeID, uint32 date, uint32 checkInTime, ((string,string,int256,int256),string[],string) relevantDetails) returns()
func (_Contract *ContractTransactor) CheckIn(opts *bind.TransactOpts, employeeID *big.Int, date uint32, checkInTime uint32, relevantDetails RelevantDetails) (*types.Transaction, error) {
	return _Contract.contract.Transact(opts, "checkin", employeeID, date, checkInTime, relevantDetails)
}

// CheckIn is a paid mutator transaction binding the contract method 0x2659fd67.
//
// Solidity: function checkin(uint256 employeeID, uint32 date, uint32 checkInTime, ((string,string,int256,int256),string[],string) relevantDetails) returns()
func (_Contract *ContractSession) CheckIn(employeeID *big.Int, date uint32, checkInTime uint32, relevantDetails RelevantDetails) (*types.Transaction, error) {
	return _Contract.Contract.CheckIn(&_Contract.TransactOpts, employeeID, date, checkInTime, relevantDetails)
}

// CheckIn is a paid mutator transaction binding the contract method 0x2659fd67.
//
// Solidity: function checkin(uint256 employeeID, uint32 date, uint32 checkInTime, ((string,string,int256,int256),string[],string) relevantDetails) returns()
func (_Contract *ContractTransactorSession) CheckIn(employeeID *big.Int, date uint32, checkInTime uint32, relevantDetails RelevantDetails) (*types.Transaction, error) {
	return _Contract.Contract.CheckIn(&_Contract.TransactOpts, employeeID, date, checkInTime, relevantDetails)
}

// Checkout is a paid mutator transaction binding the contract method 0xfd25569d.
//
// Solidity: function checkout(uint256 employeeID, uint32 date, uint32 checkOutTime) returns()
func (_Contract *ContractTransactor) Checkout(opts *bind.TransactOpts, employeeID *big.Int, date uint32, checkOutTime uint32) (*types.Transaction, error) {
	return _Contract.contract.Transact(opts, "checkout", employeeID, date, checkOutTime)
}

// Checkout is a paid mutator transaction binding the contract method 0xfd25569d.
//
// Solidity: function checkout(uint256 employeeID, uint32 date, uint32 checkOutTime) returns()
func (_Contract *ContractSession) Checkout(employeeID *big.Int, date uint32, checkOutTime uint32) (*types.Transaction, error) {
	return _Contract.Contract.Checkout(&_Contract.TransactOpts, employeeID, date, checkOutTime)
}

// Checkout is a paid mutator transaction binding the contract method 0xfd25569d.
//
// Solidity: function checkout(uint256 employeeID, uint32 date, uint32 checkOutTime) returns()
func (_Contract *ContractTransactorSession) Checkout(employeeID *big.Int, date uint32, checkOutTime uint32) (*types.Transaction, error) {
	return _Contract.Contract.Checkout(&_Contract.TransactOpts, employeeID, date, checkOutTime)
}

// UpdateAttendanceRecord is a paid mutator transaction binding the contract method 0xfcf9199c.
//
// Solidity: function updateAttendanceRecord(uint256 employeeID, uint32 date, uint32 checkInTime, uint32 checkOutTime, string reason) returns()
func (_Contract *ContractTransactor) UpdateAttendanceRecord(opts *bind.TransactOpts, employeeID *big.Int, date uint32, checkInTime uint32, checkOutTime uint32, reason string) (*types.Transaction, error) {
	return _Contract.contract.Transact(opts, "updateAttendanceRecord", employeeID, date, checkInTime, checkOutTime, reason)
}

// UpdateAttendanceRecord is a paid mutator transaction binding the contract method 0xfcf9199c.
//
// Solidity: function updateAttendanceRecord(uint256 employeeID, uint32 date, uint32 checkInTime, uint32 checkOutTime, string reason) returns()
func (_Contract *ContractSession) UpdateAttendanceRecord(employeeID *big.Int, date uint32, checkInTime uint32, checkOutTime uint32, reason string) (*types.Transaction, error) {
	return _Contract.Contract.UpdateAttendanceRecord(&_Contract.TransactOpts, employeeID, date, checkInTime, checkOutTime, reason)
}

// UpdateAttendanceRecord is a paid mutator transaction binding the contract method 0xfcf9199c.
//
// Solidity: function updateAttendanceRecord(uint256 employeeID, uint32 date, uint32 checkInTime, uint32 checkOutTime, string reason) returns()
func (_Contract *ContractTransactorSession) UpdateAttendanceRecord(employeeID *big.Int, date uint32, checkInTime uint32, checkOutTime uint32, reason string) (*types.Transaction, error) {
	return _Contract.Contract.UpdateAttendanceRecord(&_Contract.TransactOpts, employeeID, date, checkInTime, checkOutTime, reason)
}

// ContractOwnerSetIterator is returned from FilterOwnerSet and is used to iterate over the raw logs and unpacked data for OwnerSet events raised by the Contract contract.
type ContractOwnerSetIterator struct {
	Event *ContractOwnerSet // Event containing the contract specifics and raw log

	contract *bind.BoundContract // Generic contract to use for unpacking event data
	event    string              // Event name to use for unpacking event data

	logs chan types.Log        // Log channel receiving the found contract events
	sub  ethereum.Subscription // Subscription for errors, completion and termination
	done bool                  // Whether the subscription completed delivering logs
	fail error                 // Occurred error to stop iteration
}

// Next advances the iterator to the subsequent event, returning whether there
// are any more events found. In case of a retrieval or parsing error, false is
// returned and Error() can be queried for the exact failure.
func (it *ContractOwnerSetIterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(ContractOwnerSet)
			if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
				it.fail = err
				return false
			}
			it.Event.Raw = log
			return true

		default:
			return false
		}
	}
	// Iterator still in progress, wait for either a data or an error event
	select {
	case log := <-it.logs:
		it.Event = new(ContractOwnerSet)
		if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
			it.fail = err
			return false
		}
		it.Event.Raw = log
		return true

	case err := <-it.sub.Err():
		it.done = true
		it.fail = err
		return it.Next()
	}
}

// Error returns any retrieval or parsing error occurred during filtering.
func (it *ContractOwnerSetIterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *ContractOwnerSetIterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// ContractOwnerSet represents a OwnerSet event raised by the Contract contract.
type ContractOwnerSet struct {
	OldOwner common.Address
	NewOwner common.Address
	Raw      types.Log // Blockchain specific contextual infos
}

// FilterOwnerSet is a free log retrieval operation binding the contract event 0x342827c97908e5e2f71151c08502a66d44b6f758e3ac2f1de95f02eb95f0a735.
//
// Solidity: event OwnerSet(address indexed oldOwner, address indexed newOwner)
func (_Contract *ContractFilterer) FilterOwnerSet(opts *bind.FilterOpts, oldOwner []common.Address, newOwner []common.Address) (*ContractOwnerSetIterator, error) {

	var oldOwnerRule []interface{}
	for _, oldOwnerItem := range oldOwner {
		oldOwnerRule = append(oldOwnerRule, oldOwnerItem)
	}
	var newOwnerRule []interface{}
	for _, newOwnerItem := range newOwner {
		newOwnerRule = append(newOwnerRule, newOwnerItem)
	}

	logs, sub, err := _Contract.contract.FilterLogs(opts, "OwnerSet", oldOwnerRule, newOwnerRule)
	if err != nil {
		return nil, err
	}
	return &ContractOwnerSetIterator{contract: _Contract.contract, event: "OwnerSet", logs: logs, sub: sub}, nil
}

// WatchOwnerSet is a free log subscription operation binding the contract event 0x342827c97908e5e2f71151c08502a66d44b6f758e3ac2f1de95f02eb95f0a735.
//
// Solidity: event OwnerSet(address indexed oldOwner, address indexed newOwner)
func (_Contract *ContractFilterer) WatchOwnerSet(opts *bind.WatchOpts, sink chan<- *ContractOwnerSet, oldOwner []common.Address, newOwner []common.Address) (event.Subscription, error) {

	var oldOwnerRule []interface{}
	for _, oldOwnerItem := range oldOwner {
		oldOwnerRule = append(oldOwnerRule, oldOwnerItem)
	}
	var newOwnerRule []interface{}
	for _, newOwnerItem := range newOwner {
		newOwnerRule = append(newOwnerRule, newOwnerItem)
	}

	logs, sub, err := _Contract.contract.WatchLogs(opts, "OwnerSet", oldOwnerRule, newOwnerRule)
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(ContractOwnerSet)
				if err := _Contract.contract.UnpackLog(event, "OwnerSet", log); err != nil {
					return err
				}
				event.Raw = log

				select {
				case sink <- event:
				case err := <-sub.Err():
					return err
				case <-quit:
					return nil
				}
			case err := <-sub.Err():
				return err
			case <-quit:
				return nil
			}
		}
	}), nil
}

// ParseOwnerSet is a log parse operation binding the contract event 0x342827c97908e5e2f71151c08502a66d44b6f758e3ac2f1de95f02eb95f0a735.
//
// Solidity: event OwnerSet(address indexed oldOwner, address indexed newOwner)
func (_Contract *ContractFilterer) ParseOwnerSet(log types.Log) (*ContractOwnerSet, error) {
	event := new(ContractOwnerSet)
	if err := _Contract.contract.UnpackLog(event, "OwnerSet", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}
