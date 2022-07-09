# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

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

mutable struct HexLocation_LocalDataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function HexLocation_LocalDataEntry(; kwargs...)
        obj = new(meta(HexLocation_LocalDataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct HexLocation_LocalDataEntry (mapentry)
const __meta_HexLocation_LocalDataEntry = Ref{ProtoMeta}()
function meta(::Type{HexLocation_LocalDataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_HexLocation_LocalDataEntry)
            __meta_HexLocation_LocalDataEntry[] = target = ProtoMeta(HexLocation_LocalDataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, HexLocation_LocalDataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_HexLocation_LocalDataEntry[]
    end
end
function Base.getproperty(obj::HexLocation_LocalDataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct HexLocation_GlobalDataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function HexLocation_GlobalDataEntry(; kwargs...)
        obj = new(meta(HexLocation_GlobalDataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct HexLocation_GlobalDataEntry (mapentry)
const __meta_HexLocation_GlobalDataEntry = Ref{ProtoMeta}()
function meta(::Type{HexLocation_GlobalDataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_HexLocation_GlobalDataEntry)
            __meta_HexLocation_GlobalDataEntry[] = target = ProtoMeta(HexLocation_GlobalDataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, HexLocation_GlobalDataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_HexLocation_GlobalDataEntry[]
    end
end
function Base.getproperty(obj::HexLocation_GlobalDataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
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
            fnum = Int[1,2,3,5,6,7]
            allflds = Pair{Symbol,Union{Type,String}}[:X => Int64, :Y => Int64, :Z => Int64, :HexID => AbstractString, :LocalData => Base.Dict{AbstractString,AbstractString}, :GlobalData => Base.Dict{AbstractString,AbstractString}]
            meta(target, HexLocation, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
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
    elseif name === :HexID
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :LocalData
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    elseif name === :GlobalData
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct HexInfo_DataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function HexInfo_DataEntry(; kwargs...)
        obj = new(meta(HexInfo_DataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct HexInfo_DataEntry (mapentry)
const __meta_HexInfo_DataEntry = Ref{ProtoMeta}()
function meta(::Type{HexInfo_DataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_HexInfo_DataEntry)
            __meta_HexInfo_DataEntry[] = target = ProtoMeta(HexInfo_DataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, HexInfo_DataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_HexInfo_DataEntry[]
    end
end
function Base.getproperty(obj::HexInfo_DataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
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
            allflds = Pair{Symbol,Union{Type,String}}[:ID => AbstractString, :Data => Base.Dict{AbstractString,AbstractString}]
            meta(target, HexInfo, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_HexInfo[]
    end
end
function Base.getproperty(obj::HexInfo, name::Symbol)
    if name === :ID
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :Data
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
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

mutable struct HexIDData <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function HexIDData(; kwargs...)
        obj = new(meta(HexIDData), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct HexIDData
const __meta_HexIDData = Ref{ProtoMeta}()
function meta(::Type{HexIDData})
    ProtoBuf.metalock() do
        if !isassigned(__meta_HexIDData)
            __meta_HexIDData[] = target = ProtoMeta(HexIDData)
            allflds = Pair{Symbol,Union{Type,String}}[:HexID => AbstractString, :dataKey => AbstractString, :value => AbstractString]
            meta(target, HexIDData, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_HexIDData[]
    end
end
function Base.getproperty(obj::HexIDData, name::Symbol)
    if name === :HexID
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :dataKey
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct HexLocData <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function HexLocData(; kwargs...)
        obj = new(meta(HexLocData), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct HexLocData
const __meta_HexLocData = Ref{ProtoMeta}()
function meta(::Type{HexLocData})
    ProtoBuf.metalock() do
        if !isassigned(__meta_HexLocData)
            __meta_HexLocData[] = target = ProtoMeta(HexLocData)
            allflds = Pair{Symbol,Union{Type,String}}[:X => Int64, :Y => Int64, :Z => Int64, :dataKey => AbstractString, :value => AbstractString]
            meta(target, HexLocData, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_HexLocData[]
    end
end
function Base.getproperty(obj::HexLocData, name::Symbol)
    if name === :X
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :Y
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :Z
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :dataKey
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
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
        MethodDescriptor("RepoGetHexagonInfo", 2, HexIDList, HexInfoList),
        MethodDescriptor("RepoGetHexagonInfoData", 3, HexIDData, HexIDData),
        MethodDescriptor("RepoGetAllHexagonInfo", 4, Empty, HexInfoList),
        MethodDescriptor("RepoDelHexagonInfo", 5, HexIDList, Result),
        MethodDescriptor("RepoDelHexagonInfoData", 6, HexIDData, Result),
        MethodDescriptor("MapAdd", 7, HexLocationList, Result),
        MethodDescriptor("MapAddData", 8, HexLocData, Result),
        MethodDescriptor("MapGet", 9, HexagonGetRequest, HexLocationList),
        MethodDescriptor("MapUpdate", 10, HexLocation, Result),
        MethodDescriptor("MapUpdateData", 11, HexLocation, Result),
        MethodDescriptor("MapRemove", 12, HexLocationList, Result),
        MethodDescriptor("MapRemoveData", 13, HexLocation, Result),
        MethodDescriptor("GetStatusServer", 14, Empty, Status),
        MethodDescriptor("GetStatusStorage", 15, Empty, Status),
        MethodDescriptor("GetStatusClients", 16, Empty, Status)
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

RepoGetHexagonInfo(stub::HexagonServiceStub, controller::ProtoRpcController, inp::HexIDList, done::Function) = call_method(stub.impl, _HexagonService_methods[2], controller, inp, done)
RepoGetHexagonInfo(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::HexIDList) = call_method(stub.impl, _HexagonService_methods[2], controller, inp)

RepoGetHexagonInfoData(stub::HexagonServiceStub, controller::ProtoRpcController, inp::HexIDData, done::Function) = call_method(stub.impl, _HexagonService_methods[3], controller, inp, done)
RepoGetHexagonInfoData(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::HexIDData) = call_method(stub.impl, _HexagonService_methods[3], controller, inp)

RepoGetAllHexagonInfo(stub::HexagonServiceStub, controller::ProtoRpcController, inp::Empty, done::Function) = call_method(stub.impl, _HexagonService_methods[4], controller, inp, done)
RepoGetAllHexagonInfo(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::Empty) = call_method(stub.impl, _HexagonService_methods[4], controller, inp)

RepoDelHexagonInfo(stub::HexagonServiceStub, controller::ProtoRpcController, inp::HexIDList, done::Function) = call_method(stub.impl, _HexagonService_methods[5], controller, inp, done)
RepoDelHexagonInfo(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::HexIDList) = call_method(stub.impl, _HexagonService_methods[5], controller, inp)

RepoDelHexagonInfoData(stub::HexagonServiceStub, controller::ProtoRpcController, inp::HexIDData, done::Function) = call_method(stub.impl, _HexagonService_methods[6], controller, inp, done)
RepoDelHexagonInfoData(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::HexIDData) = call_method(stub.impl, _HexagonService_methods[6], controller, inp)

MapAdd(stub::HexagonServiceStub, controller::ProtoRpcController, inp::HexLocationList, done::Function) = call_method(stub.impl, _HexagonService_methods[7], controller, inp, done)
MapAdd(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::HexLocationList) = call_method(stub.impl, _HexagonService_methods[7], controller, inp)

MapAddData(stub::HexagonServiceStub, controller::ProtoRpcController, inp::HexLocData, done::Function) = call_method(stub.impl, _HexagonService_methods[8], controller, inp, done)
MapAddData(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::HexLocData) = call_method(stub.impl, _HexagonService_methods[8], controller, inp)

MapGet(stub::HexagonServiceStub, controller::ProtoRpcController, inp::HexagonGetRequest, done::Function) = call_method(stub.impl, _HexagonService_methods[9], controller, inp, done)
MapGet(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::HexagonGetRequest) = call_method(stub.impl, _HexagonService_methods[9], controller, inp)

MapUpdate(stub::HexagonServiceStub, controller::ProtoRpcController, inp::HexLocation, done::Function) = call_method(stub.impl, _HexagonService_methods[10], controller, inp, done)
MapUpdate(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::HexLocation) = call_method(stub.impl, _HexagonService_methods[10], controller, inp)

MapUpdateData(stub::HexagonServiceStub, controller::ProtoRpcController, inp::HexLocation, done::Function) = call_method(stub.impl, _HexagonService_methods[11], controller, inp, done)
MapUpdateData(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::HexLocation) = call_method(stub.impl, _HexagonService_methods[11], controller, inp)

MapRemove(stub::HexagonServiceStub, controller::ProtoRpcController, inp::HexLocationList, done::Function) = call_method(stub.impl, _HexagonService_methods[12], controller, inp, done)
MapRemove(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::HexLocationList) = call_method(stub.impl, _HexagonService_methods[12], controller, inp)

MapRemoveData(stub::HexagonServiceStub, controller::ProtoRpcController, inp::HexLocation, done::Function) = call_method(stub.impl, _HexagonService_methods[13], controller, inp, done)
MapRemoveData(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::HexLocation) = call_method(stub.impl, _HexagonService_methods[13], controller, inp)

GetStatusServer(stub::HexagonServiceStub, controller::ProtoRpcController, inp::Empty, done::Function) = call_method(stub.impl, _HexagonService_methods[14], controller, inp, done)
GetStatusServer(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::Empty) = call_method(stub.impl, _HexagonService_methods[14], controller, inp)

GetStatusStorage(stub::HexagonServiceStub, controller::ProtoRpcController, inp::Empty, done::Function) = call_method(stub.impl, _HexagonService_methods[15], controller, inp, done)
GetStatusStorage(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::Empty) = call_method(stub.impl, _HexagonService_methods[15], controller, inp)

GetStatusClients(stub::HexagonServiceStub, controller::ProtoRpcController, inp::Empty, done::Function) = call_method(stub.impl, _HexagonService_methods[16], controller, inp, done)
GetStatusClients(stub::HexagonServiceBlockingStub, controller::ProtoRpcController, inp::Empty) = call_method(stub.impl, _HexagonService_methods[16], controller, inp)

export Empty, HexLocation_LocalDataEntry, HexLocation_GlobalDataEntry, HexLocation, HexInfo_DataEntry, HexInfo, HexInfoList, HexLocationList, HexagonGetRequest, HexIDList, HexIDData, HexLocData, Status, Result, HexagonService, HexagonServiceStub, HexagonServiceBlockingStub, RepoAddHexagonInfo, RepoGetHexagonInfo, RepoGetHexagonInfoData, RepoGetAllHexagonInfo, RepoDelHexagonInfo, RepoDelHexagonInfoData, MapAdd, MapAddData, MapGet, MapUpdate, MapUpdateData, MapRemove, MapRemoveData, GetStatusServer, GetStatusStorage, GetStatusClients
# mapentries: "HexInfo_DataEntry" => ("AbstractString", "AbstractString"), "HexLocation_GlobalDataEntry" => ("AbstractString", "AbstractString"), "HexLocation_LocalDataEntry" => ("AbstractString", "AbstractString")
