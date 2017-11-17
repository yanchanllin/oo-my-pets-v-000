class Owner
  attr_accessor :name, :pets
 attr_reader :species
  @@all = []

    def initialize(species)
        @species = species
        @@all <<self
      end

    def all
      self.all = @@all
    end
    def self.reset_all
      self.clear
    end
    def self.count
      @@all.size
    end
   def species
     
   end
    def say_species
      puts "I am a #{species}."
    end
    def name
      self.name
    end
    def pets
      self.pets = {":#{species} => []",":#{species} => []",":#{species} => []"}
    end
    def buy_fish(name)
      fish = Fish.new
      pets[:fishes] <<fish

    end
end
