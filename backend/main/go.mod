module backend/main

go 1.22.0

require (
	backend/ethelcaindb v0.0.0-00010101000000-000000000000
	github.com/gorilla/mux v1.8.1
	github.com/mattn/go-sqlite3 v1.14.22
)

require backend/models v0.0.0-00010101000000-000000000000 // indirect

replace backend/models => ../models

replace backend/ethelcaindb => ../database
