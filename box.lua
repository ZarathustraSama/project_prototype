Box = Entity:extend()

function Box:new(x, y)
    Box.super.new(self, x, y, "box.png")
    self.weight = 5
end

function Box:update(dt)
    -- It's important that we do this before changing the position    
    Box.super.update(self, dt)    
    
    local window_width = love.graphics.getWidth()
  
    if self.x < 0 then
      self.tempStrength = 100
      self.x = 0
    
    elseif self.x + self.width > window_width then
      self.tempStrength = 100
      -- This way, all of the sprite can stay inside the window
      self.x = window_width - self.width
    end
end