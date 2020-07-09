# protoc-gen-micro

This is protobuf code generation for micro. We use protoc-gen-micro to reduce boilerplate code.

We previously maintained a [fork](https://github.com/micro/protobuf) of [golang/protobuf](https://github.com/golang/protobuf) 
to include the micro plugin but have since moved to protoc-gen-micro. 

## Install

```
go get github.com/micro/protoc-gen-micro
```

Also required: 

- [protoc](https://github.com/google/protobuf)
- [protoc-gen-go](https://github.com/golang/protobuf)

## Usage

Define your service as `greeter.proto`

```
syntax = "proto3";

service Greeter {
	rpc Hello(Request) returns (Response) {}
}

message Request {
	string name = 1;
}

message Response {
	string msg = 1;
}
```

Generate the code

```
protoc --proto_path=$GOPATH/src:. --micro_out=. --go_out=. greeter.proto
```

Your output result should be:

```
./
    greeter.proto	# original protobuf file
    greeter.pb.go	# auto-generated by protoc-gen-go
    greeter.micro.go	# auto-generated by protoc-gen-micro
```

The micro generated code includes clients and handlers which reduce boiler plate code

## LICENSE

protoc-gen-micro is a liberal reuse of protoc-gen-go hence we maintain the original license 