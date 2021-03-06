require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  attr_writer :pets

  @@all = []

  def initialize(species)
    @name = name
    @species = "human"
    @pets = {}
    @pets[:fishes] = []
    @pets[:cats] = []
    @pets[:dogs] = []
    # @mood = "nervous"
    @@all << self

  end

  def say_species
    "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
    # fish.owner = self
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
    @pets[:cats].find {|cat| cat.name == name}
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
    # dog.owner = self
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.each do |pet| pet.mood = "nervous"
      end
    end
    pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end


end
