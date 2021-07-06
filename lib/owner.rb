require 'pry'
class Owner
 
@@all = []

  attr_reader :name
  
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def name
    @name
  end

  def species
    @species
  end
  
  def say_species
    p "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def cats
    Cat.all.filter{|cat| cat.owner == self}
  end

  def dogs
    Dog.all.filter{|dog| dog.owner == self}
  end

  def buy_cat(cat)
    Cat.new(cat, self)
  end

  def buy_dog(dog)
    Dog.new(dog, self)
  end

  def walk_dogs
    self.dogs.map{|dog| dog.mood = "happy"}
  end

  def feed_cats
    self.cats.map{|cat| cat.mood = "happy"}
  end

  def sell_pets
    pets = self.dogs + self.cats
    pets.map{|pet| pet.mood = "nervous"; pet.owner = nil}
  end

  def list_pets
    p "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  
  # binding.pry

end