class Owner
  # code goes here
  attr_accessor :mood, :name
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
end