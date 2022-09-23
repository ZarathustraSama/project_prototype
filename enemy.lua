Enemy = Entity:extend()

function Enemy:new(x, y)    
    Enemy.super.new(self, x, y, "assets/characters/character_0013.png")    
    self.strength = 10
    self.hp = 1
    self.weight = 0
end

function Enemy:update(dt)
    -- It's important that we do this before changing the position    
    Enemy.super.update(self, dt)    
    self.y = self.y + (100 * dt)
end
      