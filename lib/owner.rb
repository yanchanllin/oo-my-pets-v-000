class Owner
  attr_accessor :name, :pets 
 attr_reader :species

    def initialize(name)
        @name = name
      end

    def all
      self.all = @@all
    end
    def self.reset_all
      self.clear
    end 
    def self.count 
      
    end 
   def species
     @species = species
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
    def buy_fish 
      owner = Owner.new
      
    end
end
