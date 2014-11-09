require_relative '../lib/used_car.rb'

eleanor = UsedCar.new('Ford', 'Mustang', 1967, 30_000, 50_000)

puts eleanor.inspect

# Above: Creates error, car = 4 arguments, used_car = 5

=begin
puts eleanor.age

eleanor.markup = 999999999
puts "markup is #{eleanor.markup}"

puts  "value is #{eleanor.value}"
puts "price is #{eleanor.price}"
=end
