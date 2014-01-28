class Vehicle
  attr_accessor :wheels, :doors, :engine, :make, :model, :year
  #attr_accessible :wheels, :doors, :engine, :make, :model, :year

  def initialize(wheels, doors)
    @doors = doors
    @wheels = wheels
  end

  def print_wheels_and_doors
    puts "Wheels: #{@wheels}, Doors: #{@doors}"
  end

  def drive
    puts "I am driving my #{self.class.to_s}."
  end

  def self.crashed
    puts "Oh noes... BAM!"
  end

  protected
  def protected_method
    puts "I am protected."
  end

  private
  def private_method
    puts "I am private."
  end

end

class Car < Vehicle #subclass of vehicle
  attr_accessor :trunk
end

class Truck < Vehicle
end 

class Boat < Vehicle
  def drive
    puts "I'm on a boat."
    super
  end
end  