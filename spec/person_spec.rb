require "./person.rb"
require 'rspec'
describe BuildPerson do
	before(:all) do
		@name = BuildPerson.new
		@name.create_new_person
	end
	it 'one of the parameters is not initialized correctly' do
		@name.person.health.should eq 100
		@name.person.mana.should eq 50
		@name.person.cheerfulness.should eq 5
		@name.person.fatigue.should eq 0
		@name.person.money.should eq 100
	end
end