require "./view_person.rb"
require 'rspec'
describe ViewPerson do
	before(:all) do
		@view_person = ViewPerson.new
	end
	it 'there is a non-numeric value in the arguments' do
		@view_person.view("A", 1 , 2, 3, 4).should raise.error()
		@view_person.view(1, "A" , 2, 3, 4).should raise.error()
		@view_person.view(1, 2 , "A", 3, 4).should raise.error()
		@view_person.view(1, 2 , 3, "A", 4).should raise.error()
		@view_person.view(1, 2 , 3, 4, "A").should raise.error()
		@view_person.view("A", 1 , 2, 3, 4).should raise.error()
		@view_person.view("A", "A" , 2, 3, 4).should raise.error()
		@view_person.view("A", 1 , "A", 3, 4).should raise.error()
		@view_person.view("A", 1 , 2, "A", 4).should raise.error()
		@view_person.view("A", 1 , 2, 3, "A").should raise.error()
		@view_person.view(1, "A" , "A", 3, 4).should raise.error()
		@view_person.view(1, "A" , 2, "A", 4).should raise.error()
		@view_person.view(1, "A" , 2, 3, "A").should raise.error()
		@view_person.view(1, 2 , "A", "A", 4).should raise.error()
		@view_person.view(1, 2 , "A", 3, "A").should raise.error()
		@view_person.view(1, 2 , 3, "A", "A").should raise.error()
		@view_person.view("A", "A" , "A", 3, 4).should raise.error()
		@view_person.view("A", "A" , 2, "A", 4).should raise.error()
		@view_person.view("A", "A" , 2, 3, "A").should raise.error()
		@view_person.view("A", 1 , "A", "A", 4).should raise.error()
		@view_person.view("A", 1 , "A", 3, "A").should raise.error()
		@view_person.view("A", 1 , 2, "A", "A").should raise.error()
		@view_person.view(1, "A" , "A", "A", 4).should raise.error()
		@view_person.view(1, "A" , "A", 3, "A").should raise.error()
		@view_person.view(1, "A" , 2, "A", "A").should raise.error()
		@view_person.view(1, 2 , "A", "A", "A").should raise.error()
		@view_person.view("A", "A" , "A", "A", 1).should raise.error()
		@view_person.view("A", "A" , "A", 1, "A").should raise.error()
		@view_person.view(1, "A" , "A", "A", "A").should raise.error()
		@view_person.view("A", 1 , "A", "A", "A").should raise.error()
		@view_person.view("A", "A" , 1, "A", "A").should raise.error()
		@view_person.view("A", "A" , "A", "A", "A").should raise.error()
	end

end