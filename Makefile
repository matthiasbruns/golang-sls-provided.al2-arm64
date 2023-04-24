build:
	echo "Building lambda binaries"
	env GOOS=linux GOARCH=amd64 go build -o build/lambda/hello cmd/lambda/hello/main.go
	env GOOS=linux GOARCH=amd64 go build -o build/lambda/world cmd/lambda/world/main.go