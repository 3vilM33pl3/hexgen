## Usage
### Create gRPC client instance
`include("HexcloudClients.jl")`

`using .HexcloudClients`

`client = HexagonServiceBlockingClient("http://localhost:8080")`

### Check status of the hexcloud server
`import .HexcloudClients: Empty, GetStatusServer`

`result, status = GetStatusServer(client, Empty())`

`println(result.msg)`

`gRPCCheck(status)`

## Run tests
`julia> ]`
 
 `(HexWorld) pkg> add Test`

\<Backsapce>

`julia> using Pkg`

`julia> Pkg.test("HexWorld")`

## Protocol buffers and gRPC code
### Dependencies
`julia> ]`
 
 `(HexWorld) pkg> add ProtoBuf`

 `(HexWorld) pkg> add gRPCClient`

 ### Generate files
`julia> cd("HexWorld/src/")`

`julia> using gRPCClient`

`julia> gRPCClient.generate("api/hexagon.proto")`


