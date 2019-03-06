class Fort < Structure

  include Drawable
  include Destroyable
  include Damagable
  include Hittable
  
  def initialize(args)
    @location = args.fetch[:location]
    @hit_points = args.fetch[:hit_points]
    @sprite = args.fetch[:sprite]
  end

end
