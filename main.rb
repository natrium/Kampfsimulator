#Encoding: utf-8
require_relative 'lib/creature'

stalker = Creature.new :name => "Stalker"
snakelady = Creature.new :name => "Snake-Lady"

5.times do
  print stalker.name + " attacks " + snakelady.name + " and does '"
  print stalker.attack(snakelady).to_s + "' damage\n"
  print snakelady.name + " attacks " + stalker.name + " and does '"
  print snakelady.attack(stalker).to_s + "' damage\n"
end



