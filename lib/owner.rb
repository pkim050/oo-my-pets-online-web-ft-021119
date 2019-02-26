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
    @pets = {fishes: [], cats: [], dogs: []}
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
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs
    @pets[:dogs][0].mood = "happy"
  end
  
  def play_with_cats
    @pets[:cats][0].mood = "happy"
  end
  
  def feed_fish
    @pets[:fishes][0].mood = "happy"
  end
  
  def sell_pets
    @pets.collect do |key, value|
      value.each {|element| element.mood = "nervous"}
      value.clear
    end
  end
  
  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
end