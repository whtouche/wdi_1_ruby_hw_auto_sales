class CarLot
  attr_accessor :name
  attr_reader :cars

  def initialize(name)
    @name = name
    @cars = []
  end

  def value
    cars.map(&:price).reduce(0, &:+)
  end

  def cars_with_make(make)
    cars.select{ |car| car.make == make }
  end
end

