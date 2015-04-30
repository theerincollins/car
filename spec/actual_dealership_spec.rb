require('rspec')
require('actual_dealership')
require('dealership')

describe('Dealership') do

  before do
    Dealership.clear()
  end

  describe('.all') do
    it('is empty at first') do
      expect(Dealership.all).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a dealership in a set of dealerships') do
      test_dealer = Dealership.new("Handy dan's cars")
      test_dealer.save
      expect(Dealership.all).to(eq([test_dealer]))
    end
  end

  describe('.find') do
    it("returns a dealership by it's ID number") do
      test_dealer1 = Dealership.new("That car place")
      test_dealer1.save()
      test_dealer2 = Dealership.new("The other place")
      test_dealer2.save()
      expect(Dealership.find(test_dealer2.id())).to(eq(test_dealer2))
    end
  end

  describe('.clear') do
    it('clears out contents of all dealerships') do
      Dealership.new("Handy Dan's Used Cars").save
      Dealership.clear()
      expect(Dealership.all).to(eq([]))
    end
  end

  describe('#name') do
    it('returns name of dealership') do
      test_dealer = Dealership.new("Bill and Andy's")
      test_dealer.save
      expect(test_dealer.name).to(eq("Bill and Andy's"))
    end
  end

  describe('#id') do
    it('returns id of dealership') do
      test_dealer = Dealership.new("Bill and Andy's")
      test_dealer.save
      expect(test_dealer.id).to(eq(1))
    end
  end

  describe('#cars') do
    it('returns array of cars at the dealership, empty at first') do
      test_dealer = Dealership.new("Bill and Andy's")
      test_dealer.save
      expect(test_dealer.cars()).to(eq([]))
    end
  end

  describe('#add_vehicle') do
    it('adds a new vehicle to a dealership') do
      test_dealer = Dealership.new("Bill and Andy's")
      test_vehicle = Vehicle.new("Honda", "Accord", "2015")
      test_dealer.add_vehicle(test_vehicle)
      expect(test_dealer.cars()).to(eq([test_vehicle]))
    end
  end
end
