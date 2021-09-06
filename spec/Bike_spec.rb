require "Bike"

describe Bike do
    it "respond to working? function" do
        expect(Bike.new).to respond_to(:working?)  
    end
end