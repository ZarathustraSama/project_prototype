Ground_A = Entity:extend()

function Ground_A:new(x, y)
    Ground_A.super.new(self, x, y, "/assets/tiles/tile_0004.png")
    self.strength = 100
    self.weight = 0
end