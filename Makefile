up:
	docker compose up -d
down:
	docker compose down

dev:
	CompileDaemon --command="./interview_beearning"

solc-contract:
	rm -rf build-contract
	solc --optimize --ir-optimized --bin --abi contract/attendance.sol -o build-contract

abigen:
	abigen --bin=build-contract/AttendanceContract.bin --abi=build-contract/AttendanceContract.abi --pkg=contract --out=contract/attendance.go

deploy-smartcontract:
	go run cmd/deploySmartContract.go