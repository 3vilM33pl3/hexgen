using HexWorld
using Test

@test HexDirection(2) == Hexagon(1, -1, 0)
@test Add(Hexagon(1, -1, 0), Hexagon(2, -2, 0)) == Hexagon(3, -3, 0)
@test Neighbour(Hexagon(2, -2, 0), 2) == Hexagon(3, -3, 0)
@test Scale(Hexagon(0, 1, -1), 4) == Hexagon(0, 4, -4)
@test Ring(Hexagon(0, 0, 0), 1) == [
    Hexagon(-1, 1, 0),
    Hexagon(0, 1, -1),
    Hexagon(1, 0, -1),
    Hexagon(1, -1, 0),
    Hexagon(0, -1, 1),
    Hexagon(-1, 0, 1),
]
@test Ring(Hexagon(-1, 1, 0), 1) == [
    Hexagon(-2, 2, 0),
    Hexagon(-1, 2, -1),
    Hexagon(0, 1, -1),
    Hexagon(0, 0, 0),
    Hexagon(-1, 0, 1),
    Hexagon(-2, 1, 1),
]
@test Ring(Hexagon(2, -2, 0), 2) == [
    Hexagon(0, 0, 0),
    Hexagon(1, 0, -1),
    Hexagon(2, 0, -2),
    Hexagon(3, -1, -2),
    Hexagon(4, -2, -2),
    Hexagon(4, -3, -1),
    Hexagon(4, -4, 0),
    Hexagon(3, -4, 1),
    Hexagon(2, -4, 2),
    Hexagon(1, -3, 2),
    Hexagon(0, -2, 2),
    Hexagon(0, -1, 1),
]
@test Spiral(Hexagon(-1, 1, 0), 1) == [
    Hexagon(-2, 2, 0),
    Hexagon(-1, 2, -1),
    Hexagon(0, 1, -1),
    Hexagon(0, 0, 0),
    Hexagon(-1, 0, 1),
    Hexagon(-2, 1, 1),
]