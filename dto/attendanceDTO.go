package dto

type AddressInfoDTO struct {
	Label   string `json:"Label" binding:"required"`
	Details string `json:"details" binding:"required"`
	Lat     uint32 `json:"lat" binding:"required"`
	Long    uint32 `json:"long" binding:"required"`
}

type RelevantDetailsDTO struct {
	AddressInfo AddressInfoDTO `json:"addressInfo" binding:"required"`
	Imgs        []string       `json:"imgs" binding:"required"`
	Note        string         `json:"note" binding:"required"`
}

type CheckInDTO struct {
	Date            uint32             `json:"date" binding:"required"`
	CheckInTime     uint32             `json:"checkInTime" binding:"required"`
	RelevantDetails RelevantDetailsDTO `json:"relevantDetails" binding:"required"`
}

type CheckoutDTO struct {
	Date         uint32 `json:"date" binding:"required"`
	CheckoutTime uint32 `json:"checkoutTime" binding:"required"`
}
