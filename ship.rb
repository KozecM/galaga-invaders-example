# Ship
# x and y represent the coordinate of the center of the ship.
# For example, when y is 900, then the nose of the ship is at
# coordinate (x, y - height / 2).

class Ship

  WIDTH = 100
  HEIGHT = 200

  attr_reader :x, :y
  
  def initialize(x, y)
    @x = x
    @y = y
    @missile_coordinates = []
  end

  def move_left
    x -= 5
  end

  def move_right
    x += 5
  end
  
  def ship_cannon
    (x, y - HEIGHT / 2)
  end
    
  def draw
    # Ignore this
  end 


  def fire_missiles
    @missile_coordinates << [ship_cannon]
  end

  def move_missiles
    @missile_coordinates.each do |missile|
      missile[1] -= 10
    end
  end

  def draw
    # Ignore this
  end

  def draw_missiles
    @missile_coordinates.each do |missile|

    end
  end

end

class Missiles
  
end

=begin
Reflecting on Principle
-----------------------
1. What does the OOD promise to give us, as programmers? code that is easier to read and more flexible to future change. 
2. What does Martin's SOLID acronym stand for? (Just expand the acronym.)
    Single Responsibility, Open-Closed, Liskoc Substitution, Interface Segregation, Dependency Inversion
3. True or False: It is our professional responsibility to always spend time designing before writing our code (designing now rather than later).
    False
4. In Metz' TRUE acronym, what does the E stand for and what does it mean?
    Exemplary: Code should encourage those who change it to perpetuate these qualities
5. How does applying SRP naturally lead to good design?
    If a class has multiple responsibilities and you only want to use some of the behavoirs it is impossible. Single responsibility ensures that you can choose only the behavoirs you want and if anything needs to be changed it only occurs in one place so it is easy.
=end
