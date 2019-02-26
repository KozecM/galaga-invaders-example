#!/usr/bin/env ruby

require_relative 'alien'
require_relative 'ship'
require_relative 'missile_collection'

class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship, :alien, :missiles

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new(WIDTH, HEIGHT)
    @alien = Alien.new
    @missiles = MissileCollection.new
  end

  def update
    missiles.update
  end

  def draw
    ship.draw
    alien.draw
    missiles.draw
  end

  def show
    while (true) do
      update
      draw
      key_pressed(gets.chomp) # Simulating a key interrupt.
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.move_left
    elsif key == 'd'
      ship.move_right
    elsif key == ' '
      missiles.add_from(ship)
    end
    if key == 'p'
      missiles.add_from(alien)
    end
  end

end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. What is "duck typing" and what does it have to do with polymorphism?
    Duck typing makes code more polymorphic. It allows many different object to accept the same messages. 

2. What are some common code smells that indicate the need for relying on a
   "duck type" rather than a concrete class?
    Cast statements that switch on class, kind_of? and is_a? (like the example above), and using 
    responds_to?. Responds to might seems better, but it still expects very specific classes.

3. True or False: Abstractions like duck typing make code explicitly easier to
   understand, vs. using concrete types.
    False, they make them harder to understand because the ducktype is virtual. you have to
    show where it is in your testing and documentation.
=end
