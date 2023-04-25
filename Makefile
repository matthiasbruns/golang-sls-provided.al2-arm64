build:
	echo "Building lambda binaries"
	env GOOS=linux GOARCH=arm64 go build -o build/lambda/hello cmd/lambda/hello/main.go
	env GOOS=linux GOARCH=arm64 go build -o build/lambda/world cmd/lambda/world/main.go