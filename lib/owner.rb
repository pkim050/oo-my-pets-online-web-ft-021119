require 'pry'
class Owner
  # code goes here
  attr_accessor :mood, :name, :pets
  attr_reader :species
  @@all = []
  @@count = 0
  
  def initialize(species)
    @species = species
    @mood = "nervous"
    @@count += 1
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@count
  end
  
  def self.reset_all
    @@all = []
    @@count = 0
  end
  
  def say_species
    "I am a human."
  end
  
  def pets
    @pets = {cats: [], dogs: [], fishes: []}
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
end