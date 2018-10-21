class Person
	attr_accessor :health, :mana, :cheerfulness, :fatigue, :money
end
class BuildPerson
	attr_reader :person
	def create_new_person
		@person = Person.new
		@person.health = 100
	 	@person.mana = 50
	 	@person.cheerfulness = 5
	 	@person.fatigue = 0
	 	@person.money = 100
	end
end
