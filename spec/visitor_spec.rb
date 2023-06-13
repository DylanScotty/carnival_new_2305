require './lib/visitor'

RSpec.describe Visitor do
    describe "#initilize" do

        it "has a name" do
            visitor1 = Visitor.new('Bruce', 54, '$10')

            expect(visitor1).to be_an(Visitor)
        end

        it "has attributes" do
            visitor1 = Visitor.new('Bruce', 54, '$10')

            expect(visitor1.name).to eq("Bruce")
            expect(visitor1.height).to eq(54)
            expect(visitor1.spending_money).to eq(10)
            expect(visitor1.preferences).to eq([])
        end
    end

    describe "#add_preferences" do
        
        it "can add preferences" do
        end
    end

end