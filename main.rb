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

bodycount = 0

conan.engages enemies do |fighter1, fighter2| 
  print fighter1.name + " attacks " + fighter2.name + " and does '"
  print fighter1.attack(fighter2).to_s + "' damage\n"
  print fighter2.name + " attacks " + fighter1.name + " and does '"
  print fighter2.attack(fighter1).to_s + "' damage\n"
  sleep 0.5
end


#begin
#    monstaRRR = enemies.rand.clone
#    Fight::fight conan, monstaRRR
#    if conan.is_alive?
#        conan.gain_exp monstaRRR.xp
#    end
#    bodycount += 1 if monstaRRR.is_dead?
#end while conan.is_alive?

print conan.name + " has slain #{bodycount} enemy unit"
print "s" if bodycount >  1
puts

