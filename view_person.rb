
class ViewPerson
	def view(health, mana, cheerfulness, fatigue, money)
		if health != health.to_i  || mana != mana.to_i || cheerfulness != cheerfulness.to_i || fatigue != fatigue.to_i || money != money.to_i 
			raise "No number"
    	else
			print "\nHealth: "
			puts health
			print "Mana: "
			puts mana
			print "Cheerfulness: "
			puts cheerfulness
			print "Fatigue: "
			puts fatigue
			print "Money: "
			puts money
		end
		rescue RuntimeError => error
    	return error.message
	end
end