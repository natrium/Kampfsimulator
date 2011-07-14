#Encoding: utf-8
require_relative 'lib/fight'
require_relative 'lib/hero'
require_relative 'lib/monster'
require_relative 'lib/random_array_item'

conan = Hero.new :name => "Conan the barbarian", :str => 4, :con => 2

enemies = []
10.times do |i|
    enemies << Monster.new(:name => "Enemy #{i}", :str => rand(3), :con => 1)
end

conan.bodycount = 0

conan.engages enemies do |fighter1, fighter2| 
  print fighter1.name + " attacks " + fighter2.name + " and does '"
  print fighter1.attack(fighter2).to_s + "' damage\n"
  if fighter2.is_alive?
    print fighter2.name + " attacks " + fighter1.name + " and does '"
    print fighter2.attack(fighter1).to_s + "' damage\n"
  end
  sleep 0.5
end

print conan.name + " has slain #{conan.bodycount} enemy unit"
print "s" if conan.bodycount >  1
puts

