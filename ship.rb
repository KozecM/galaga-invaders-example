require_relative 'vector'
require_relative 'missile'

class Ship

  WIDTH = 100
  HEIGHT = 100
  DEFAULT_VELOCITY = 5

  attr_accessor :location

  def initialize(screen_width, screen_height)
    @location = Vector.new(screen_width / 2, screen_height - half_height)
  end

  def muzzle_location
    Vector.new(location.x, top_edge)
  end
  
  def add_missile(missiles)
    missile = Missile.new(muzzle_location)
    missile.launch(-10)
    missiles.add(missile)
  end

  def move_left
    move(-DEFAULT_VELOCITY)
  end

  def move_right
    move(DEFAULT_VELOCITY)
  end

  def draw
    puts self
  end

  def to_s
    "✈️ (#{location})"
  end

  private

  def move(delta)
    location.x += delta
  end

  def top_edge
    location.y - half_height
  end

  def half_height
    HEIGHT / 2
  end

end
