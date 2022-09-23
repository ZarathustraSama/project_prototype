Platform = Entity:extend()

function Platform:new(x, y)
    Platform.super.new(self, x, y, "box.png")
    self.strength = 100
    self.weight = 0
end