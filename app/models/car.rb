class Car

  attr_reader :make, :model, :car_owner, :mechanic, :classification

  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classification
    @@all.map do |type|
      type.classification
    end.uniq
  end

  def expert_mechanics
    Mechanic.all.select { |mechanic| mechanic.specialty == self.classification}
  end
end
