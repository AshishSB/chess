require "rspec"
require_relative "rectangle"
RSpec.describe Rectangle do
	describe "area" do
  		it "is a product of length and breadth" do
  			rectangle=Rectangle.new(10,15)
  			expect(rectangle.area).to eq(150)
  		end
  		it "is a product of length and breadth" do
  			rectangle=Rectangle.new(12,10)
  			expect(rectangle.area).to eq(120)
  		end
	end
end