require './lib/visitor'
require './lib/ride'
require './lib/carnival'

RSpec.describe Carnival do
    it "exsist" do
        carnival1 = Carnival.new(14)

        expect(carnival1).to be_a(Carnival)
    end

    it "has attributes" do
        carnival1 = Carnival.new(14)

        expect(carnival1.duration).to eq(14)
        expect(carnival1.rides).to eq([])
    end

    it "can add rides" do
        carnival1 = Carnival.new(14)
        ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })

        expect(carnival1.add_rides(ride1)).to eq([ride1])
    end

    it "can generate most popular ride"
        carnival2 = Carnival.new(12)

        ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
        ride2 = Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })

        visitor1 = Visitor.new('Bruce', 54, '$10')
        visitor2 = Visitor.new('Tucker', 36, '$5')
        visitor3 = Visitor.new('Penny', 64, '$15')

        visitor1.add_preference(:gentle)
        visitor2.add_preference(:gentle)
        visitor3.add_preference(:gentle)

        ride1.board_rider(visitor1)
        ride1.board_rider(visitor2)
        ride1.board_rider(visitor3)
        ride2.board_rider(visitor1)
        ride2.board_rider(visitor2)

        expect(carnival2.most_popular_ride).to eq(ride2)
    end


end