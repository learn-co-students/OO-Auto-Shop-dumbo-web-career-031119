require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jim = CarOwner.new("jim")
tim = CarOwner.new("tim")
will = CarOwner.new("will")

joe = Mechanic.new("joe", "antique")
steve = Mechanic.new("steve", "clunker")
tom = Mechanic.new("tom", "exotic")

ford = Car.new("ford", "E-70", "antique", jim, joe)
toyota = Car.new("toyota", "super", "clunker", tim, steve)
nissan = Car.new("nissan", "altima", "antique", jim, joe)
honda = Car.new("honda", "civic", "clunker", will, steve)
audi = Car.new("audi", "700", "exotic", will, tom)
fiat = Car.new("fiat", "mini", "exotic", tim, tom)


binding.pry
