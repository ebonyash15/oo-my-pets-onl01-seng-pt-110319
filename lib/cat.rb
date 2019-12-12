class Cat
  attr_reader :name, :species
  attr_accessor :owner, :mood
  @@all=[]
 def initialize(name, owner, mood="nervous")
   @name=name
   @owner=owner
   @species="cat"
   @mood=mood
   @@all<<self
 end
 def self.all
   @@all
 end
end
