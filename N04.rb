class Animal
  @@counter = 0

  def initialize
    @@counter += 1
  end

  def self.get_counter
    p @@counter
  end
end

Animal.new
Animal.get_counter

Animal.new
Animal.get_counter

Animal.new
Animal.get_counter

Animal.new
Animal.get_counter