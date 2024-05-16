up:
	docker compose up -d
down:
	docker compose down

dev:
	CompileDaemon --command="./interview_prj"

init-contract:
	rm -rf build-contract
	rm -rf contract/attendance.go
	solc --optimize --ir-optimized --bin --abi contract/attendance.sol -o build-contract
	abigen --bin=build-contract/AttendanceContract.bin --abi=build-contract/AttendanceContract.abi --pkg=contract --out=contract/attendance.go

deploy-contract:
	go run cmd/deploySmartContract.go

migrate-up:
	migrate -path migrations/db -database "postgresql://user:password@localhost:5432/be_earning?sslmode=disable" -verbose up

migrate-down:
	migrate -path migrations/db -database "postgresql://user:password@localhost:5432/be_earning?sslmode=disable" -verbose down