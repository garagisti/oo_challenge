require './parcel'
class Cube < Parcel
  attr_accessor :width, :breadth

  def initialize(id, height, width, breadth)
    @id = id
    @height = height
    @width = width
    @breadth = breadth
  end

  def volume
    @height * @width * @breadth
  end
end
