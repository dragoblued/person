require "./controller.rb"
require 'rspec'
require 'matrix'
describe Configure do
	before(:all) do
		@configure = Configure.new
	end
	it 'incorrectly written event names' do
		for i in 0..@configure.name_function.length
			@configure.name_function[i].to_i eq @configure.name_function[i]
		end
	end
	it 'invalid characters are present' do 
		for i in 0 .. @configure.matrix_value.row_size
			for j in 0 .. @configure.matrix_value.column_size
				@configure.matrix_value[i][j].to_i eq @configure.matrix_value[i][j]
			end
		end
	end
end