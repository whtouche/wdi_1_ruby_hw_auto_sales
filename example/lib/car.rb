class Car
  # Constant within Car class
  DEFAULT_MARKUP = 0.1
  ANNUAL_DEPRECIATION = 0.05

  attr_accessor :make, :model, :year, :msrp, :markup

  # Keyword arguments (as opposed to positional arguments)
  def initialize(make:, model:, year:, msrp:, markup: DEFAULT_MARKUP) #required arguments, except markup
    @make, @model, @year, @msrp, @markup = make, model, year, msrp, markup
  end

  # Below, msrp and year are methods not instance variables
  # Later, can make them into methods that do calculations, and below doesn't need to change
  def value
    msrp * (1 - depreciation)
  end

  def price
    value * (1 + markup)
  end

  private

  def depreciation
    (Time.now.year - year) * ANNUAL_DEPRECIATION
  end
end
