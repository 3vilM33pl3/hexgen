module HexcloudClients
using gRPCClient

include("hexcloud.jl")
using .hexcloud

import Base: show

# begin service: hexcloud.HexagonService

export HexagonServiceBlockingClient, HexagonServiceClient

struct HexagonServiceBlockingClient
    controller::gRPCController
    channel::gRPCChannel
    stub::HexagonServiceBlockingStub

    function HexagonServiceBlockingClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = HexagonServiceBlockingStub(channel)
        new(controller, channel, stub)
    end
end

struct HexagonServiceClient
    controller::gRPCController
    channel::gRPCChannel
    stub::HexagonServiceStub

    function HexagonServiceClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = HexagonServiceStub(channel)
        new(controller, channel, stub)
    end
end

show(io::IO, client::HexagonServiceBlockingClient) = print(io, "HexagonServiceBlockingClient(", client.channel.baseurl, ")")
show(io::IO, client::HexagonServiceClient) = print(io, "HexagonServiceClient(", client.channel.baseurl, ")")

import .hexcloud: RepoAddHexagonInfo
"""
    RepoAddHexagonInfo

- input: hexcloud.HexInfoList
- output: hexcloud.Result
"""
RepoAddHexagonInfo(client::HexagonServiceBlockingClient, inp::hexcloud.HexInfoList) = RepoAddHexagonInfo(client.stub, client.controller, inp)
RepoAddHexagonInfo(client::HexagonServiceClient, inp::hexcloud.HexInfoList, done::Function) = RepoAddHexagonInfo(client.stub, client.controller, inp, done)

import .hexcloud: RepoDelHexagonInfo
"""
    RepoDelHexagonInfo

- input: hexcloud.HexIDList
- output: hexcloud.Result
"""
RepoDelHexagonInfo(client::HexagonServiceBlockingClient, inp::hexcloud.HexIDList) = RepoDelHexagonInfo(client.stub, client.controller, inp)
RepoDelHexagonInfo(client::HexagonServiceClient, inp::hexcloud.HexIDList, done::Function) = RepoDelHexagonInfo(client.stub, client.controller, inp, done)

import .hexcloud: RepoGetHexagonInfo
"""
    RepoGetHexagonInfo

- input: hexcloud.HexIDList
- output: hexcloud.HexInfoList
"""
RepoGetHexagonInfo(client::HexagonServiceBlockingClient, inp::hexcloud.HexIDList) = RepoGetHexagonInfo(client.stub, client.controller, inp)
RepoGetHexagonInfo(client::HexagonServiceClient, inp::hexcloud.HexIDList, done::Function) = RepoGetHexagonInfo(client.stub, client.controller, inp, done)

import .hexcloud: RepoGetAllHexagonInfo
"""
    RepoGetAllHexagonInfo

- input: hexcloud.Empty
- output: hexcloud.HexInfoList
"""
RepoGetAllHexagonInfo(client::HexagonServiceBlockingClient, inp::hexcloud.Empty) = RepoGetAllHexagonInfo(client.stub, client.controller, inp)
RepoGetAllHexagonInfo(client::HexagonServiceClient, inp::hexcloud.Empty, done::Function) = RepoGetAllHexagonInfo(client.stub, client.controller, inp, done)

import .hexcloud: MapAdd
"""
    MapAdd

- input: hexcloud.HexLocation
- output: hexcloud.Result
"""
MapAdd(client::HexagonServiceBlockingClient, inp::hexcloud.HexLocation) = MapAdd(client.stub, client.controller, inp)
MapAdd(client::HexagonServiceClient, inp::hexcloud.HexLocation, done::Function) = MapAdd(client.stub, client.controller, inp, done)

import .hexcloud: MapGet
"""
    MapGet

- input: hexcloud.HexagonGetRequest
- output: hexcloud.HexLocationList
"""
MapGet(client::HexagonServiceBlockingClient, inp::hexcloud.HexagonGetRequest) = MapGet(client.stub, client.controller, inp)
MapGet(client::HexagonServiceClient, inp::hexcloud.HexagonGetRequest, done::Function) = MapGet(client.stub, client.controller, inp, done)

import .hexcloud: MapRemove
"""
    MapRemove

- input: hexcloud.HexLocationList
- output: hexcloud.Result
"""
MapRemove(client::HexagonServiceBlockingClient, inp::hexcloud.HexLocationList) = MapRemove(client.stub, client.controller, inp)
MapRemove(client::HexagonServiceClient, inp::hexcloud.HexLocationList, done::Function) = MapRemove(client.stub, client.controller, inp, done)

import .hexcloud: GetStatusServer
"""
    GetStatusServer

- input: hexcloud.Empty
- output: hexcloud.Status
"""
GetStatusServer(client::HexagonServiceBlockingClient, inp::hexcloud.Empty) = GetStatusServer(client.stub, client.controller, inp)
GetStatusServer(client::HexagonServiceClient, inp::hexcloud.Empty, done::Function) = GetStatusServer(client.stub, client.controller, inp, done)

import .hexcloud: GetStatusStorage
"""
    GetStatusStorage

- input: hexcloud.Empty
- output: hexcloud.Status
"""
GetStatusStorage(client::HexagonServiceBlockingClient, inp::hexcloud.Empty) = GetStatusStorage(client.stub, client.controller, inp)
GetStatusStorage(client::HexagonServiceClient, inp::hexcloud.Empty, done::Function) = GetStatusStorage(client.stub, client.controller, inp, done)

import .hexcloud: GetStatusClients
"""
    GetStatusClients

- input: hexcloud.Empty
- output: hexcloud.Status
"""
GetStatusClients(client::HexagonServiceBlockingClient, inp::hexcloud.Empty) = GetStatusClients(client.stub, client.controller, inp)
GetStatusClients(client::HexagonServiceClient, inp::hexcloud.Empty, done::Function) = GetStatusClients(client.stub, client.controller, inp, done)

# end service: hexcloud.HexagonService

end # module HexcloudClients
