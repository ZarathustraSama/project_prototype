Player = Entity:extend()

function Player:new(x, y)
    Player.super.new(self, x, y, "assets/characters/character_0000.png")
    self.strength = 10
    self.hp = 3
end

function Player:update(dt)
    -- It's important that we do this before changing the position    
    Player.super.update(self, dt)    

    if love.keyboard.isDown("left", "a") then
        self.x = self.x - 200 * dt
    elseif love.keyboard.isDown("right", "d") then
        self.x = self.x + 200 * dt
    end
    if self.last.y ~= self.y then
      self.canJump = false
    end
    
  local window_width = love.graphics.getWidth()
  
  if self.x < 0 then
      self.x = 0
    
  elseif self.x + self.width > window_width then
      -- This way, all of the sprite can stay inside the window
      self.x = window_width - self.width
  end
end

function Player:jump()
  if self.canJump then
    self.gravity = -300
    self.canJump = false
  end
end

function Player:shoot()
    table.insert(listOfBullets, Bullet(self.x, self.y))
end

function Player:collide(e, direction)
  Player.super.collide(self, e, direction)
  if direction == "bottom" then
    self.canJump = true
  end
end

function Player:checkResolve(e, direction)
    if e:is(Platform) then
        if direction == "bottom" then
            return true
        else
            return false
        end
    end
    return true
end