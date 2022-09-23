Bullet = Entity:extend()

function Bullet:new(x, y)
    Bullet.super.new(self, x, y, "assets/dps/laserPurple.png")
    self.strength = 11
    self.speed = 700
    self.weight = 0
end

function Bullet:update(dt)
    Bullet.super.update(self, dt) 
    self.x = self.x + self.speed * dt       
end

function Bullet:draw()
    love.graphics.draw(self.image, self.x, self.y, 0, 1/2, 1/2)
end