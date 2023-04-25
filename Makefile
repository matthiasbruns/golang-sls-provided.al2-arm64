build:
	echo "Building lambda binaries"
	env GOOS=linux GOARCH=arm64 go build -o build/lambda/hello/bootstrap cmd/lambda/hello/main.go
	env GOOS=linux GOARCH=arm64 go build -o build/lambda/world/bootstrap cmd/lambda/world/main.go

zip:
	zip -j build/lambda/hello.zip build/lambda/hello/bootstrap
	zip -j build/lambda/world.zip build/lambda/world/bootstrap