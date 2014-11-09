class UsedCar < Car
  MILEAGE_DEPRECIATION = 0.000001

  attr_accessor :mileage
  attr_reader :damages

  def initialize(mileage:, **attributes)# ** (double splat)
    super(attributes) # Reference to version of THIS method (initialize) in the parent (Car)
    @mileage = 0
    @damages = []
  end

  def damaged?
    damages.any?
  end

  def value
    # Below calls cost on each damage (Sympbol#to_proc)
    # Array of damages mapped to array of costs
    # Start at 0, for each damage keep running total by adding each cost
    # If cost took any or plus took more than 1 argument this wouldn't work
    # "How to sum an array of integers"
    super - damages.map(&:cost).reduce(0, &:+)
    # Below same as above
    # damages.map{ |damage| damage.cost }.reduce { |sum, cost| sum + cost}

  end

  private

  def depreciation
    super + (mileage * MILEAGE_DEPRECIATION)
  end

end
