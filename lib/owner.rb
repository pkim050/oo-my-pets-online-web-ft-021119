require 'pry'
class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  @@count = 0
  
  def initialize(species)
    @species = species
    @@count += 1
    @@all << self
    @pets = {cats: [], dogs: [], fishes: []}
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
    "I am a #{species}."
  end
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
end