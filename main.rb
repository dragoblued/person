require 'yaml'
require "./controller.rb"
require "./person.rb"
require "./view_person.rb"

save = Save.new
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
		view_player.view(player.person.health, player.person.mana, player.person.cheerfulness, player.person.fatigue, player.person.money)
		if a == 2 
			#чтение данных с файла класс load
		end
		while true do
			#проверка границ класс exit
			#if prov.die == 1 break end
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