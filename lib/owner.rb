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
     @cats=[]
     Cat.all.each do |cat|
       if cat.owner == self
         @cats<<cat
       end
     end
     @cats
   end
   def dogs
     @dogs=[]
     Dog.all.each do |dog|
       if dog.owner == self
         @dogs << dog
       end
     end
     @dogs
   end
  def buy_cat(cat_name)
    p new_cat=Cat.all.find{|cat|cat.name==name}
    new_cat.owner=self
  end
  def buy_dog
  end
  def walk #changes mood
  end
   def feed #changes mood
   end
   def sell_pets
   end
end
