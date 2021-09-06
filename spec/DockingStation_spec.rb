require "DockingStation"

describe DockingStation do
  describe "#release_bike" do
    it "should respond to release bike" do
      expect(subject).to respond_to(:release_bike)
    end 
        
    it 'should return an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error("There are no available bikes")
    end
  end

  describe "#dock" do
    it 'should dock bikes' do
      expect(subject).to respond_to(:dock).with(1).argument
    end
    
    it 'should respond to bike' do
      expect(subject).to respond_to(:bike)
    end
    
    it 'should dock the bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq(bike)
    end
    
    it 'should return bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq(bike) 
    end

    it 'should return an error when station is full' do
      station = DockingStation.new
      bike = Bike.new
      station.dock(bike)
      expect { station.dock(bike) }.to raise_error("This station is full")
    end
  end
end
