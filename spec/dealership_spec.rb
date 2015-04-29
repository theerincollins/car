require('rspec')
require('dealership')

describe(Vehicle) do

  describe(".all") do
    it("is empty at first") do
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves an instance of a vehicle to the record of all vehicles") do
      test_vehicle = Vehicle.new("Geo", "Metro", 1995)
      test_vehicle.save()
      expect(Vehicle.all()).to(eq([test_vehicle]))
    end
  end


end
