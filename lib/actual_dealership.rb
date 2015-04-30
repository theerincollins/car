class Dealership
  @@dealerships = []

  define_method(:initialize) do |name|
    @name = name
    @id = @@dealerships.length + 1
    @cars = []
  end

  define_singleton_method(:all) do
    @@dealerships
  end

  define_singleton_method(:clear) do
    @@dealerships = []
  end

  define_singleton_method(:find) do |id|
    that_dealer = nil
    @@dealerships.each do |dealer|
      if dealer.id == id
        that_dealer = dealer
      end
    end
    that_dealer
  end

  define_method(:save) do
    @@dealerships.push(self)
  end

  define_method(:name) do
    @name
  end

  define_method(:id) do
    @id
  end

  define_method(:cars) do
    @cars
  end

  define_method(:add_vehicle) do |vehicle|
    @cars.push(vehicle)
  end

end
