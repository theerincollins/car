require('rspec')
require('dealership')

describe(Vehicle) do
  before() do
    Vehicle.clear()
  end

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

  describe('.clear') do
    it("clears the record of any vehicles") do
      test_vehicle = Vehicle.new("Barbie Jeep", "Pink", 1993)
      test_vehicle.save()
      Vehicle.clear()
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe('#make') do
    it("saves the make of a vehicle") do
      test_vehicle = Vehicle.new("Barbie Jeep", "Pink", 1993)
      expect(test_vehicle.make()).to(eq("Barbie Jeep"))
    end
  end

  describe('#model') do
    it("saves the model of a vehicle") do
      test_vehicle = Vehicle.new("Barbie Jeep", "Pink", 1993)
      expect(test_vehicle.model()).to(eq("Pink"))
    end
  end

  describe('#year') do
    it("saves the year of a vehicle") do
      test_vehicle = Vehicle.new("Barbie Jeep", "Pink", 1993)
      expect(test_vehicle.year()).to(eq(1993))
    end
  end



end
