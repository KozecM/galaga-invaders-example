module Damageable
  
  DAMAGE = 1
  
  def damage
    @hit_points -= DAMAGE
  end
  
end