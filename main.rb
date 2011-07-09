#Encoding: utf-8
require_relative 'lib/fight'
require_relative 'lib/hero'
require_relative 'lib/monster'

conan = Hero.new :name => "Conan the barbarian", :str => 4, :con => 2
stalker = Monster.new :name => "Stalker"
snakelady = Monster.new :name => "Snake-Lady"
bodycount = 0

begin
    monstaRRR = stalker.clone
    Fight::fight conan, monstaRRR
    bodycount += 1 if monstaRRR.is_dead?
end while conan.is_alive?

print conan.name + " has slain #{bodycount} " + stalker.name
print "s" if bodycount >  1
puts

