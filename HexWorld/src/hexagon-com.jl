include("HexcloudClients.jl")

using .HexcloudClients
import .HexcloudClients:
    HexagonGetRequest,
    HexLocation,
    HexLocationList,
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