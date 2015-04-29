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

  describe('#age') do
    it('saves the age of a vehicle') do
      test_vehicle = Vehicle.new("Honda", "Element", 2006)
      expect(test_vehicle.age()).to(eq(9))
    end
  end

  describe('#american?') do
    it('returns whether or not vehicle is american-made') do
      test_vehicle = Vehicle.new("Chrysler", "LeBaron", 1990)
      expect(test_vehicle.american?()).to(eq(true))
    end
  end

  describe('#worth_buying') do
    it('returns whether a car is worth buying') do
      test_vehicle = Vehicle.new("Dodge", "Neon", 1999)
      expect(test_vehicle.worth_buying?()).to(eq(false))
    end
  end

  describe('#id') do
    it('assigns each vehicle a unique id') do
      test_vehicle = Vehicle.new("Dodge", "Neon", 1999)
      expect(test_vehicle.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('find a vehicle using the vehicle id') do
      test_vehicle = Vehicle.new("Nissan", "Rogue", 1885)
      test_vehicle.save()
      test_vehicle2 = Vehicle.new("Jeep", "Cherokee", 1999)
      test_vehicle2.save()
      expect(Vehicle.find(test_vehicle2.id())).to(eq(test_vehicle2))
    end
  end

end
