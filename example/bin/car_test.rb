require 'pry'
require_relative '../lib/car.rb'
require_relative '../lib/carlot.rb'
require_relative '../lib/used_car.rb'
require_relative '../lib/damage.rb'


binding.pry
=begin
eleanor = Car.new('Ford', 'Mustang', 1967, 30_000)

puts eleanor.inspect

puts eleanor.age

eleanor.markup = 999999999
puts "markup is #{eleanor.markup}"

puts  "value is #{eleanor.value}"
puts "price is #{eleanor.price}"
=end
