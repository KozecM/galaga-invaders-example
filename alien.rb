require_relative 'missile'

class Alien

  WIDTH = 50
  HEIGHT = 50

  attr_accessor :location
  
  def initialize
    @location = Vector.new(200, 200)
  end

  def move
  end

  def add_missile(missiles)
    missile = Missile.new(muzzle_location)
    missile.launch(10)
    missiles.add(missile)
  end
  
  def draw
    puts self
  end

  def to_s
    "👾 (#{location})"
  end

  def bottom_edge
    location.y + half_height
  end
  
  def muzzle_location
    Vector.new(location.x, bottom_edge)
  end

  private

  def half_height
    HEIGHT / 2
  end

end
