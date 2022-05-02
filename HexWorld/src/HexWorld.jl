module HexWorld

include("hexagon-functions.jl")
include("HexcloudClients.jl")

export Hexagon, HexDirection, Neighbour, Add, Scale, Ring, Spiral

using .HexcloudClients
import .HexcloudClients:
    HexagonGetRequest,
    HexLocation,
    Direction,
    RepoGetHexagonInfo,
    RepoGetAllHexagonInfo,
    MapAdd,
    MapGet,
    MapRemove,
    HexIDList,
    HexInfoList,
    HexInfo,
    Empty,
    GetStatusServer,
    GetStatusStorage,
    GetStatusClients,
    HexagonServiceBlockingClient,
    HexagonServiceClient

end # module


