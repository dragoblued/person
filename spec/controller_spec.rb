require "./controller.rb"
require 'rspec'
describe Configure do
	before(:all) do
		@configure = Configure.new
	end
	#:funcion_name, :parametr, :kol_fun, :kol_par
	it 'incorrectly written event names' do
		for i in 0..@configure.kol_fun
			@configure.funcion_name[i].to_i != @configure.funcion_name[i]
		end
	end
	it 'invalid characters are present' do 
		for i in 0 ... @configure.kol_fun
			for j in 0 ... @configure.kol_par
				@configure.parametr[i][j].to_s == @configure.parametr[i][j]
			end
		end
	end
end