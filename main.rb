class Person
	attr_accessor :health, :mana, :cheerfulness, :fatigue, :money
	 def initialize()
	 	@health = 100
	 	@mana = 0
	 	@cheerfulness = 10
	 	@fatigue = 0
	 	@money = 0
	 end

end
class ViewPerson
	def view(health, mana, cheerfulness, fatigue, money)
		print "\nЗдоровье: "
		puts health
		print "Мана: "
		puts mana
		print "Жизнерадостность: "
		puts cheerfulness
		print "Усталость: "
		puts fatigue
		print "Деньги: "
		puts money
	end
end

valera = Person.new
v = ViewPerson.new
v.view(valera.health, valera.mana, valera.cheerfulness, valera.fatigue, valera.money)

