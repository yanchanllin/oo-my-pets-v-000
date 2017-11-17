class Owner
  attr_accessor :name, :pets
 attr_reader :species
  @@all = []

    def initialize(species)
        @species = species
        @@all <<self
      end

    def self.all
       @@all
    end
    def self.reset_all
      self.clear
    end
    def self.count
      @@all.size
    end

    def say_species
      "I am a #{species}."
    end
    def name
      self.name
    end
    def pets
      self.pets = {:fishes => [], :dogs => [], :cats => []}
    end
    def buy_fish(name)
      fish = Fish.new
      pets[:fishes] <<fish
    end
    def buy_cat(name)
      cat = Cat.new
      pets[:cats] <<cat
    end 

end
