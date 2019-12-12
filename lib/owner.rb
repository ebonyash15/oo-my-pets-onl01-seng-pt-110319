class Owner
   pets=[]
   @@all=[]
   attr_reader :name, :species
   def initialize(name)
     @name=name
     @species="human"
     @@all<<self
   end
   def say_species
     human = self.species
     p "I am a #{human}."
   end
   def self.all
     @@all
   end
   def self.count
     @@all.size
   end
   def self.reset_all
     @@all.clear
   end
   def cats
     Cat.all.collect {|cat| cat.owner == self}
   end
  def buy_a_pet
  end
  def walk #changes mood
  end
   def feed #changes mood
   end
   def sell_pets
   end
end
