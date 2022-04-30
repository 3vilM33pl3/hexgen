# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

const Direction = (;[
    Symbol("N") => Int32(0),
    Symbol("NE") => Int32(1),
    Symbol("E") => Int32(2),
    Symbol("SE") => Int32(3),
    Symbol("S") => Int32(4),
    Symbol("SW") => Int32(5),
    Symbol("W") => Int32(6),
    Symbol("NW") => Int32(7),
]...)

mutable struct Empty <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Empty(; kwargs...)
        obj = new(meta(Empty), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Empty
const __meta_Empty = Ref{ProtoMeta}()
function meta(::Type{Empty})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Empty)
            __meta_Empty[] = target = ProtoMeta(Empty)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, Empty, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Empty[]
    end
end

mutable struct HexLocation <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function HexLocation(; kwargs...)
        obj = new(meta(HexLocation), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct HexLocation
const __meta_HexLocation = Ref{ProtoMeta}()
function meta(::Type{HexLocation})
    ProtoBuf.metalock() do
        if !isassigned(__meta_HexLocation)
            __meta_HexLocation[] = target = ProtoMeta(HexLocation)
            allflds = Pair{Symbol,Union{Type,String}}[:X => Int64, :Y => Int64, :Z => Int64, :Direction => Int32, :HexID => AbstractString]
            meta(target, HexLocation, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_HexLocation[]
    end
end
function Base.getproperty(obj::HexLocation, name::Symbol)
    if name === :X
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :Y
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :Z
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :Direction
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :HexID
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct HexInfo <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function HexInfo(; kwargs...)
        obj = new(meta(HexInfo), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct HexInfo
const __meta_HexInfo = Ref{ProtoMeta}()
function meta(::Type{HexInfo})
    ProtoBuf.metalock() do
        if !isassigned(__meta_HexInfo)
            __meta_HexInfo[] = target = ProtoMeta(HexInfo)
            allflds = Pair{Symbol,Union{Type,String}}[:ID => AbstractString, :Exits => UInt32]
            meta(target, HexInfo, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_HexInfo[]
    end
end
function Base.getproperty(obj::HexInfo, name::Symbol)
    if name === :ID
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :Exits
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    else
        getfield(obj, name)
    end
end

mutable struct HexInfoList <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function HexInfoList(; kwargs...)
        obj = new(meta(HexInfoList), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct HexInfoList
const __meta_HexInfoList = Ref{ProtoMeta}()
function meta(::Type{HexInfoList})
    ProtoBuf.metalock() do
        if !isassigned(__meta_HexInfoList)
            __meta_HexInfoList[] = target = ProtoMeta(HexInfoList)
            allflds = Pair{Symbol,Union{Type,String}}[:hexInfo => Base.Vector{HexInfo}]
            meta(target, HexInfoList, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_HexInfoList[]
    end
end
function Base.getproperty(obj::HexInfoList, name::Symbol)
    if name === :hexInfo
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{HexInfo}
    else
        getfield(obj, name)
    end
end

mutable struct HexLocationList <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function HexLocationList(; kwargs...)
        obj = new(meta(HexLocationList), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct HexLocationList
const __meta_HexLocationList = Ref{ProtoMeta}()
function meta(::Type{HexLocationList})
    ProtoBuf.metalock() do
        if !isassigned(__meta_HexLocationList)
            __meta_HexLocationList[] = target = ProtoMeta(HexLocationList)
            allflds = Pair{Symbol,Union{Type,String}}[:hexLoc => Base.Vector{HexLocation}]
            meta(target, HexLocationList, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_HexLocationList[]
    end
end
function Base.getproperty(obj::HexLocationList, name::Symbol)
    if name === :hexLoc
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{HexLocation}
    else
        getfield(obj, name)
    end
end

mutable struct HexagonGetRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function HexagonGetRequest(; kwargs...)
        obj = new(meta(HexagonGetRequest), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct HexagonGetRequest
const __meta_HexagonGetRequest = Ref{ProtoMeta}()
function meta(::Type{HexagonGetRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_HexagonGetRequest)
            __meta_HexagonGetRequest[] = target = ProtoMeta(HexagonGetRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:hexLoc => HexLocation, :radius => Int64, :fill => Bool]
            meta(target, HexagonGetRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_HexagonGetRequest[]
    end
end
function Base.getproperty(obj::HexagonGetRequest, name::Symbol)
    if name === :hexLoc
        return (obj.__protobuf_jl_internal_values[name])::HexLocation
    elseif name === :radius
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :fill
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct HexIDList <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function HexIDList(; kwargs...)
        obj = new(meta(HexIDList), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct HexIDList
const __meta_HexIDList = Ref{ProtoMeta}()
function meta(::Type{HexIDList})
    ProtoBuf.metalock() do
        if !isassigned(__meta_HexIDList)
            __meta_HexIDList[] = target = ProtoMeta(HexIDList)
            allflds = Pair{Symbol,Union{Type,String}}[:HexID => Base.Vector{AbstractString}]
            meta(target, HexIDList, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_HexIDList[]
    end
end
function Base.getproperty(obj::HexIDList, name::Symbol)
    if name === :HexID
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct Status <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Status(; kwargs...)
        obj = new(meta(Status), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Status
const __meta_Status = Ref{ProtoMeta}()
function meta(::Type{Status})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Status)
            __meta_Status[] = target = ProtoMeta(Status)
            allflds = Pair{Symbol,Union{Type,String}}[:msg => AbstractString]
            meta(target, Status, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Status[]
    end
end
function Base.getproperty(obj::Status, name::Symbol)
    if name === :msg
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct Result <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Result(; kwargs...)
        obj = new(meta(Result), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Result
const __meta_Result = Ref{ProtoMeta}()
function meta(::Type{Result})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Result)
            __meta_Result[] = target = ProtoMeta(Result)
            allflds = Pair{Symbol,Union{Type,String}}[:success => Bool]
            meta(target, Result, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Result[]
    end
end
function Base.getproperty(obj::Result, name::Symbol)
    if name === :success
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

# service methods for HexagonService
const _HexagonService_methods = MethodDescriptor[
        MethodDescriptor("RepoAddHexagonInfo", 1, HexInfoList, Result),
        MethodDescriptor("RepoDelHexagonInfo", 2, HexIDList, Result),
        MethodDescriptor("RepoGetHexagonInfo", 3, HexIDList, HexInfoList),
        MethodDescriptor("RepoGetAllHexagonInfo", 4, Empty, HexInfoList),
        MethodDescriptor("MapAdd", 5, HexLocation, Result),
        MethodDescriptor("MapGet", 6, HexagonGetRequest, HexLocationList),
        MethodDescriptor("MapRemove", 7, HexLocationList, Result),
        MethodDescriptor("GetStatusServer", 8, Empty, Status),
        MethodDescriptor("GetStatusStorage", 9, Empty, Status),
        MethodDescriptor("GetStatusClients", 10, Empty, Status)
    ] # const _HexagonService_methods
const _HexagonService_desc = ServiceDescriptor("hexcloud.HexagonService", 1, _HexagonService_methods)

HexagonService(impl::Module) = ProtoService(_HexagonService_desc, impl)

mutable struct HexagonServiceStub <: AbstractProtoServiceStub{false}
    impl::ProtoServiceStub
    HexagonServiceStub(channel::ProtoRpcChannel) = new(ProtoServiceStub(_HexagonService_desc, channel))
end # mutable struct HexagonServiceStub

mutable struct HexagonServiceBlockingStub <: AbstractProtoServiceStub{true}
    impl::ProtoServiceBlockingStub
    HexagonServiceBlockingStub(channel::ProtoRpcChannel) = new(ProtoServiceBlockingStub(_HexagonService_desc, channel))
end # mutable struct HexagonServiceBlockingStub

RepoAddHexagonInfo(stub::HexagonServiceStub, controller::ProtoRpcController, inp::HexInfoList, done::Function) = call_method(stub.impl, _HexagonService_methods[1], controller, inp, done)
RepoAddHexagonInfo(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::HexInfoList) = call_method(stub.impl, _HexagonService_methods[1], controller, inp)

RepoDelHexagonInfo(stub::HexagonServiceStub, controller::ProtoRpcController, inp::HexIDList, done::Function) = call_method(stub.impl, _HexagonService_methods[2], controller, inp, done)
RepoDelHexagonInfo(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::HexIDList) = call_method(stub.impl, _HexagonService_methods[2], controller, inp)

RepoGetHexagonInfo(stub::HexagonServiceStub, controller::ProtoRpcController, inp::HexIDList, done::Function) = call_method(stub.impl, _HexagonService_methods[3], controller, inp, done)
RepoGetHexagonInfo(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::HexIDList) = call_method(stub.impl, _HexagonService_methods[3], controller, inp)

RepoGetAllHexagonInfo(stub::HexagonServiceStub, controller::ProtoRpcController, inp::Empty, done::Function) = call_method(stub.impl, _HexagonService_methods[4], controller, inp, done)
RepoGetAllHexagonInfo(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::Empty) = call_method(stub.impl, _HexagonService_methods[4], controller, inp)

MapAdd(stub::HexagonServiceStub, controller::ProtoRpcController, inp::HexLocation, done::Function) = call_method(stub.impl, _HexagonService_methods[5], controller, inp, done)
MapAdd(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::HexLocation) = call_method(stub.impl, _HexagonService_methods[5], controller, inp)

MapGet(stub::HexagonServiceStub, controller::ProtoRpcController, inp::HexagonGetRequest, done::Function) = call_method(stub.impl, _HexagonService_methods[6], controller, inp, done)
MapGet(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::HexagonGetRequest) = call_method(stub.impl, _HexagonService_methods[6], controller, inp)

MapRemove(stub::HexagonServiceStub, controller::ProtoRpcController, inp::HexLocationList, done::Function) = call_method(stub.impl, _HexagonService_methods[7], controller, inp, done)
MapRemove(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::HexLocationList) = call_method(stub.impl, _HexagonService_methods[7], controller, inp)

GetStatusServer(stub::HexagonServiceStub, controller::ProtoRpcController, inp::Empty, done::Function) = call_method(stub.impl, _HexagonService_methods[8], controller, inp, done)
GetStatusServer(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::Empty) = call_method(stub.impl, _HexagonService_methods[8], controller, inp)

GetStatusStorage(stub::HexagonServiceStub, controller::ProtoRpcController, inp::Empty, done::Function) = call_method(stub.impl, _HexagonService_methods[9], controller, inp, done)
GetStatusStorage(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::Empty) = call_method(stub.impl, _HexagonService_methods[9], controller, inp)

GetStatusClients(stub::HexagonServiceStub, controller::ProtoRpcController, inp::Empty, done::Function) = call_method(stub.impl, _HexagonService_methods[10], controller, inp, done)
GetStatusClients(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::Empty) = call_method(stub.impl, _HexagonService_methods[10], controller, inp)

export Direction, Empty, HexLocation, HexInfo, HexInfoList, HexLocationList, HexagonGetRequest, HexIDList, Status, Result, HexagonService, HexagonServiceStub, HexagonServiceBlockingStub, RepoAddHexagonInfo, RepoDelHexagonInfo, RepoGetHexagonInfo, RepoGetAllHexagonInfo, MapAdd, MapGet, MapRemove, GetStatusServer, GetStatusStorage, GetStatusClients
