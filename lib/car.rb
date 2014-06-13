require 'date'
class Car
  attr_reader :make, :model, :year
  attr_accessor :msrp, :markup


  def initialize(make, model, year, msrp)
    @make = make
    @model = model
    @year = year
    @msrp = msrp
    @markup = 0
  end

  # This works
  def age
    Time.now.strftime("%Y").to_i - @year
  end

  # This works
  def value # Straight line dep. with min of 0
    if @msrp - ((@msrp * 0.05) * age) < 0
      0
    else @msrp - ((@msrp * 0.05) * age)
   end
  end

  # This works
  def markup
    @markup
  end

  # This works
  def price
    value + markup
  end

end

=begin
B-Do first, is overclass!
* has a make, model, and year of manufacture
#B-Shelly = Car.new('Ford', 'Fiesta', 1984, 5000)
* has an MSRP (original retail price)
#B-Above


* has a value (MSRP modified by depreciation, taking the year of manufacture into account)
#B-Function w/in class Car. Use date calculation from person.rb, require 'date'
* all cars have a constant depreciation of 5% per year

* has a manager markup
* has a price (value modified by the manager markup)
=end
