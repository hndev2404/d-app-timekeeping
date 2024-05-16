up:
	docker compose up -d
down:
	docker compose down

dev:
	CompileDaemon --command="./interview_beearning"

init-contract:
	rm -rf build-contract
	rm -rf contract/attendance.go
	solc --optimize --ir-optimized --bin --abi contract/attendance.sol -o build-contract
	abigen --bin=build-contract/AttendanceContract.bin --abi=build-contract/AttendanceContract.abi --pkg=contract --out=contract/attendance.go

deploy-contract:
	go run cmd/deploySmartContract.go