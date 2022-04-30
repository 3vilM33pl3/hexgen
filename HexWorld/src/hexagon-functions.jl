struct Hexagon
    x::Int
    y::Int
    z::Int
end

HexDirections = [
    Hexagon(1, 0, -1),
    Hexagon(1, -1, 0),
    Hexagon(0, -1, 1),
    Hexagon(-1, 0, 1),
    Hexagon(-1, 1, 0),
    Hexagon(0, 1, -1),
]

function HexDirection(direction::Int)
    return HexDirections[direction]
end

function Add(h1::Hexagon, h2::Hexagon)
    return Hexagon(h1.x + h2.x, h1.y + h2.y, h1.z + h2.z)
end


function Neighbour(hex::Hexagon, direction::Int)
    return Add(hex, HexDirection(direction))
end

function Scale(hex::Hexagon, factor::Int)
    return Hexagon(hex.x * factor, hex.y * factor, hex.z * factor)
end


function Ring(center::Hexagon, radius::Int)
    results = Hexagon[]
    hex = Add(center, Scale(HexDirection(5), radius))
    for i = 1:6
        for j = 1:radius
            results = push!(results, hex)
            hex = Neighbour(hex, i)
        end
    end
    return results
end

function Spiral(center::Hexagon, radius::Int)
    results = Hexagon[]
    for k = 1:radius
        results = push!(results, Ring(center, k)...)
    end
    return results
end
