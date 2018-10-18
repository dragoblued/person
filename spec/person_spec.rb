require "./person.rb"
require 'rspec'
describe Person do
	before(:all) do
		@person = Person.new
	end
	it 'one of the parameters is not initialized correctly' do
		@person.health.should eq 100
		@person.mana.should eq 0
		@person.cheerfulness.should eq 10
		@person.fatigue.should eq 0
		@person.money.should eq 0
	end
end