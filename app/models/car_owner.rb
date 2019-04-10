class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def owns
    Car.all.select {|own| own.car_owner == self}
  end

  def go_to_fixer
    self.owns.map(&:mechanic)
  end

  def average_amount_cars
    self.owns.size%Car.all.size
  end

end
