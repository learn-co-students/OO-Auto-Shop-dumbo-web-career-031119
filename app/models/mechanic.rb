class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def service
    Car.all.select {|car| car.mechanic == self}
  end

  def owners
    self.service.map(&:car_owner)
  end

  def owner_names
    self.owners.map(&:name)
  end
end
