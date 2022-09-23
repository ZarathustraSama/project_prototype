Background = Entity:extend()

function Background:new(x, y)
    Background.super.new(self, x, y, "/assets/background/background_0000.png")
    self.strength = 0
    self.weight = 0
end