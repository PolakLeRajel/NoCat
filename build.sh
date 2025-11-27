#!/bin/sh

set -e

# Windows
GOOS=windows GOARCH=amd64 go build -o nocat_windows_amd64.exe nocat.go
GOOS=windows GOARCH=arm64 go build -o nocat_windows_arm64.exe nocat.go

# macOS
GOOS=darwin GOARCH=amd64 go build -o nocat_darwin_amd64 nocat.go
GOOS=darwin GOARCH=arm64 go build -o nocat_darwin_arm64 nocat.go

# Linux
GOOS=linux GOARCH=amd64 go build -o nocat_linux_amd64 nocat.go
GOOS=linux GOARCH=arm64 go build -o nocat_linux_arm64 nocat.go

echo "Build completed."
