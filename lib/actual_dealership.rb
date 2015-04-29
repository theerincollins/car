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

  define_method(:save) do
    @@dealerships.push(self)
  end

  define_method(:name) do
    @name
  end

end
