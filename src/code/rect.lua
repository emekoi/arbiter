Rect = Class:extend()

function Rect:new(x, y, width, height)
  self.x = x or 0
  self.y = y or 0
  self.width = width or 0
  self.height = height or 0
end

function Rect:getPosition()
  return self.x, self.y
end

function Rect:getSize()
  return self.width, self.height
end

function Rect:set(x, y, width, height)
  self.x = x or self.x
  self.y = y or self.y
  self.width = width or self.width
  self.height = height or self.height
  return self
end
function Rect:clone(clone_Rect)
  clone_Rect = clone_Rect or Rect()
  clone_Rect.x = self.x
  clone_Rect.y = self.y
  clone_Rect.width = self.width
  clone_Rect.height = self.height
  return clone_Rect
end

function Rect:getTop()
  return self.y
end

function Rect:getBottom()
  return self.y + self.h
end

function Rect:getLeft()
  return self.x
end

function Rect:getRight()
  return self.x + self.w
end

function Rect:isColliding(e)
  e = e or Rect("nil", 0, 0, 0, 0)
  if self:getTop() == e:getBottom() then
    return print(tostring(e.id) .. " is colliding with " .. tostring(self.id) .. ".")
  elseif self:getBottom() == e:getTop() then
    return print(tostring(e.id) .. " is colliding with " .. tostring(self.id) .. ".")
  elseif self:getRight() == e:getLeft() then
    return print(tostring(e.id) .. " is colliding with ".. tostring(self.id) .. ".")
  elseif self:getLeft() == e:getRight() then
    return print(tostring(e.id) .. " is colliding with " .. tostring(self.id) .. ".")
  else
    return print("All clear")
  end
end

function Rect:isOverlaping(e)
  e = e or Rect("nil", 0, 0, 0, 0)
  return e.x + e.w > self.x and e.x < self.x + self.w and e.y + e.h > self.y and e.y < self.y + self.h
end
