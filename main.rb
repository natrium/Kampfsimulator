#Encoding: utf-8
require_relative 'lib/fight'
require_relative 'lib/hero'
require_relative 'lib/monster'

conan = Hero.new :name => "Conan the barbarian", :str => 4, :con => 2

enemies = []
10.times do |i|
    enemies << Monster.new(:name => "Enemy #{i}", :str => rand(3), :con => 1)
end

bodycount = 0

begin
    monstaRRR = enemies[rand enemies.length]
    Fight::fight conan, monstaRRR
    bodycount += 1 if monstaRRR.is_dead?
end while conan.is_alive?

print conan.name + " has slain #{bodycount} " + stalker.name
print "s" if bodycount >  1
puts

