Ground = Entity:extend()

function Ground:new(x, y)
    Ground.super.new(self, x, y, "/assets/tiles/tile_0083.png")
    self.strength = 100
    self.weight = 0   
end