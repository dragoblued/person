require 'yaml'
require "./controller.rb"
require "./person.rb"
require "./view_person.rb"

save = Save.new
loading = Load.new
exit = Exit.new
player = BuildPerson.new
player.create_new_person
config = Configure.new
view_player = ViewPerson.new
while true do 
	print "\nNew game - 1\nContinue game - 2\nQuit - 3 \n"
	a = gets.chomp.to_i
	case a 
	when 1..2
		puts "\nEnter your name"
		name_person = gets.chomp
		if a == 2 
			loading.change(name_person)
			puts name_person
			player.person.health = loading.Attr[0]
			player.person.mana = loading.Attr[1]
			player.person.cheerfulness = loading.Attr[2]
			player.person.fatigue = loading.Attr[3]
			player.person.money = loading.Attr[4]
		end
		view_player.view(player.person.health, player.person.mana, player.person.cheerfulness, player.person.fatigue, player.person.money)
		while true do
			exit.check(player.person.health)
			if exit.death == 1 
			    puts "\nYou are dead"
			    break 
			end
			puts "\nPerform actions:"
			for i in 0...config.kol_fun
				puts "#{i} - #{config.funcion_name[i]}"
			end
			b = gets.chomp.to_i
			case b
			when 0...config.kol_fun
				player.person.health +=config.parametr[b][0]
				player.person.mana +=config.parametr[b][1]
				player.person.cheerfulness +=config.parametr[b][2]
				player.person.fatigue +=config.parametr[b][3]
				player.person.money +=config.parametr[b][4]
			else 
				save.change(name_person,player.person.health, player.person.mana, player.person.cheerfulness, player.person.fatigue, player.person.money)
				break
			end	
			view_player.view(player.person.health, player.person.mana, player.person.cheerfulness, player.person.fatigue, player.person.money)	
		end
	when 3
		break
	else 
		puts "You entered an incorrect number"
	end
end