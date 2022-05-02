## Usage
### Create gRPC client instance
`include("HexcloudClients.jl")`

`using .HexcloudClients`

`client = HexagonServiceBlockingClient("http://localhost:8080")`

### Check status of the hexcloud server
`import .HexcloudClients: Empty, GetStatusServer, GetStatusStorage, GetStatusClients`

`result, status = GetStatusServer(client, Empty())`

`println(result.msg)`

`gRPCCheck(status)`

`println(GetStatusStorage(client, Empty())[1].msg)`

### Repository functions
`import .HexcloudClients: HexagonGetRequest, RepoGetHexagonInfo, RepoGetAllHexagonInfo, HexIDList, HexInfoList, HexInfo, Empty`

#### Retrieve hexagon information
`hid = HexIDList(HexID=["0000-0000-0000-0000"])`

`response, status = RepoGetHexagonInfo(client, hid)`

`response.hexInfo[1].ID`

#### Retrieve all hexagon information
`response, status = RepoGetHexagonInfo(client, Empty())`

`response, status = HexWorld.RepoGetAllHexagonInfo(client, HexWorld.Empty())`

```julia
for hi in response.hexInfo 
    println(hi.ID)
end
```

#### Add hexagon to map


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


