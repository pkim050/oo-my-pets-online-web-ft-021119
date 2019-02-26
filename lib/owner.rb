class Owner
  # code goes here
  attr_accessor :mood
  attr_reader :name
  @@all = []
  @@count = 0
  
  def initialize(name)
    @name = name
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
  
  
end