require_relative 'car'
require_relative 'damage'
class UsedCar < Car
  attr_reader
  attr_accessor

  def initialize(make, model, year, msrp, mileage)
    super
    @damage = false
  end


end

=begin

### `UsedCar`
* has the same attributes as a new car
#B-Subclass of class Car
* has a mileage
* may have one or more damages (scuffed paint, missing hubcaps, etc.)
* has a value (same calculation as a new car, modified by mileage depreciation and the cost of all current damages)
* all used cars have a constant mileage depreciation of 1% per 10,000 miles (0.0001% per mile)
=end
