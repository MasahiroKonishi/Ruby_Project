class People
  @@counter = 0
  
  def initialize
    @@counter += 1
    puts "Peopleのインスタンスが作られました"
  end
  def self.get_counter
    puts "私は#{@@counter}人目です"
  end
  def self.talk
    puts "Peopleクラスです"
  end
  def talk
    puts "Peopleのインスタンスです"
  end
  attr_accessor :name
end

class ChildPeople < People
 def self.childtalk
   puts "目からビーム"
 end
 def talk
   puts "口からファイア"
 end
 attr_accessor :name
end

people = People.new
People.get_counter
People.talk
people.name = "オトナ"
people.talk
puts "私は#{people.name}です"

child = ChildPeople.new
People.get_counter
ChildPeople.childtalk
child.name = "コドモ"
child.talk
puts "私は#{child.name}です"