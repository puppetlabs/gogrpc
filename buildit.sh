#!/usr/bin/env bash

# Make sure you grab the latest version
if ! protoc &>/dev/null; then
  cd /tmp
  curl -OL https://github.com/google/protobuf/releases/download/v3.9.1/protoc-3.9.1-linux-x86_64.zip

  # Unzip
  unzip protoc-3.9.1-linux-x86_64.zip -d protoc3

  # Move protoc to /usr/local/bin/
  mv protoc3/bin/* /usr/local/bin/

  # Move protoc3/include to /usr/local/include/
  mv protoc3/include/* /usr/local/include/

  rm protoc-3.9.1-linux-x86_64.zip
  rm -rf protoc3
fi

go get -u github.com/golang/dep/cmd/dep
go get -u github.com/grpc-ecosystem/grpc-gateway/...
go get -u github.com/golang/protobuf/protoc-gen-go
go get -u github.com/gogo/protobuf/protoc-gen-gogo
go get -u github.com/jteeuwen/go-bindata/...
go get -u golang.org/x/tools/cmd/goimports
go get -u golang.org/x/lint/golint
