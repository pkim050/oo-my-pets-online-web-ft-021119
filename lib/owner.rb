require 'pry'
class Owner
  # code goes here
  attr_accessor :mood, :name
  attr_reader :species, :pets
  @@all = []
  #@@count = 0
  
  def initialize(species)
    @species = species
    @mood = "nervous"
    #@@count += 1
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all = []
  end
  
  def say_species
    "I am a human."
  end
  
  def pets
    @pets = {cats: [], dogs: [], fishes: []}
  end
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
end