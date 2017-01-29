local v3 = {}

--//Vector3 class
do
  v3.__index = v3
  v3.__type = "Vector3"

  v3.__add = function(a,b,...)
    if type(a) == "number" then
      return v3.new(b.x+a,b.y+a,b.z+a);
    elseif type(b) == "number" then
      return v3.new(a.x+b,a.y+b,a.z+b);
    elseif type(a) == "Vector3" and type(b) == "Vector3" or a.__type == "Vector3" and b.__type == "Vector3" then
      return v3.new(a.x+b.x,a.y+b.y,a.z+b.z);
    else
      error("Invalid argument to 'Vector3' got '?'")
    end
  end

  v3.__sub = function(a,b,...)
    if type(a) == "number" then
      return v3.new(b.x-a,b.y-a,b.z-a);
    elseif type(b) == "number" then
      return v3.new(a.x-b,a.y-b,a.z-b);
    elseif type(a) == "Vector3" and type(b) == "Vector3" or a.__type == "Vector3" and b.__type == "Vector3" then
      return v3.new(a.x-b.x,a.y-b.y,a.z-b.z);
    else
      error("Invalid argument to 'Vector3' got '?'")
    end
  end

  v3.__mul = function(a,b,...)
    if type(a) == "number" then
      return v3.new(b.x*a,b.y*a,b.z*a);
    elseif type(b) == "number" then
      return v3.new(a.x*b,a.y*b,a.z*b);
    elseif type(a) == "Vector3" and type(b) == "Vector3" or a.__type == "Vector3" and b.__type == "Vector3" then
      return v3.new(a.x*b.x,a.y*b.y,a.z*b.z);
    else
      error("Invalid argument to 'Vector3' got '?'")
    end
  end

  v3.__div = function(a,b,...)
    if type(a) == "number" then
      return v3.new(b.x/a,b.y/a,b.z/a);
    elseif type(b) == "number" then
      return v3.new(a.x/b,a.y/b,a.z/b);
    elseif type(a) == "Vector3" and type(b) == "Vector3" or a.__type == "Vector3" and b.__type == "Vector3" then
      return v3.new(a.x/b.x,a.y/b.y,a.z/b.z);
    else
      error("Invalid argument to 'Vector3' got '?'")
    end
  end

  v3.__eq = function(a,b)
    return ((a.x == b.x) and (a.y==b.y) and (a.z==b.z))
  end

  v3.__tostring = function(a)
    return "("..a.x..", "..a.y..", "..a.z..")"
  end

  v3.new = function(x,y,z)
    return setmt({x=x or 0, y=y or 0, z=z or 0},v3)
  end

  function v3:unpack()
    return self.x,self.y,self.z
  end

end;

return v3;
