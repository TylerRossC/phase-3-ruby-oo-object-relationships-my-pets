require 'pry'
class Cat
  
@@all = []

  attr_accessor :owner, :mood
  attr_reader :name

def initialize(name, owner)
  @owner = owner
  @name = name
  @mood = "nervous"
  @@all << self
end

def name
  @name
end

def self.all
  @@all
end

# binding.pry

end