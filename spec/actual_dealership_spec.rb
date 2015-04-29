require('rspec')
require('actual_dealership')

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

  describe('.clear') do
    it('clears out contents of all dealerships') do
      Dealership.new("Handy Dan's Used Cars").save
      Dealership.clear()
      expect(Dealership.all).to(eq([]))
    end
  end

  describe('#name') do
    it('saves name of dealership') do
      test_dealer = Dealership.new("Bill and Andy's")
      test_dealer.save
      expect(test_dealer.name).to(eq("Bill and Andy's"))
    end
  end

end
