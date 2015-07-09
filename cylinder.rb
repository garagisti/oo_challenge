require './parcel'
class Cylinder < Parcel

attr_accessor :radius

def initialize(id, height, radius)
  @radius = radius
  @height = height
  @id = id
end

def volume
  Math::PI*(@radius**2)*@height
end

end