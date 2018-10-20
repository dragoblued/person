require 'yaml'
class Configure
	attr_accessor :funcion_name, :parametr, :kol_fun, :kol_par
	def initialize() 
		config = YAML.load_file('function_name.yml')
		@kol_par = 5
		row = 0
		config.each do |s|
				item = s.last
				row += 1
		end
		@kol_fun = row
		@funcion_name = Array.new(kol_fun)
		@parametr = Array.new(kol_fun) { Array.new(5)}
		row = 0
		config.each do |s|
				@funcion_name[row] = s[0]
				item = s.last
				@parametr[row][0] = item['Health'].to_i
				@parametr[row][1] = item['Mana'].to_i
				@parametr[row][2] = item['Cheerfulness'].to_i
				@parametr[row][3] = item['Fatigue'].to_i
				@parametr[row][4] = item['Money'].to_i
				row += 1
		end
    end
    def print_()
		for i in 0...@kol_fun
			puts @funcion_name[i]
		end
		for i in 0...@kol_fun
			for j in 0...@kol_par
				print "#{@parametr[i][j]} "
			end
			print "\n"
		end
    end
end