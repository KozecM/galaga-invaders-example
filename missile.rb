class Missile

  attr_accessor :x, :y, :velocity

  def initialize(args)
    @x = args.fetch(:x, 200)
    @y = args.fetch(:y, 200)
    @velocity =args.fetch(:velocity, 0)
  end

  def launch(velocity)
    @velocity = velocity
  end

  def move
    self.y += velocity
  end

  def draw
    puts self
  end

  def to_s
    "#{falling? ? '☄️' : '🚀'} (#{x}, #{y})"
  end

  def falling?
    velocity > 0
  end

end
