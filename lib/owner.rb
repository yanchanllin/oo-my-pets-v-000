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
      @@all.clear
    end
    def self.count
      @@all.size
    end

    def say_species
      "I am a #{species}."
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
    def buy_dog(name)
      dog = Dog.new
      pets[:dogs] <<dog
    end
    def walk_dogs
      pets[:dogs].map {|dog| dog.mood = "happy"}
    end
    def play_with_cats
      pets[:cats].map {|cat| cat.mood = "happy"}
    end
    def feed_fish
      pets[:fishes].map {|fish| fish.mood = "happy"}
    end
    def sell_pets
      pets.each do |type, pets|
        pets.map {|pet| pet.mood = "nervous"}
      end
    end
    def list_pets
      "I have #{fish.count}fish, #{dog.count}dog(s), and #{cat.count}cat(s)."
    end
end
