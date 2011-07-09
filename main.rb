#Encoding: utf-8
require_relative 'lib/fight'
require_relative 'lib/hero'
require_relative 'lib/monster'

conan = Hero.new :name => "Conan the barbarian"
stalker = Monster.new :name => "Stalker"
snakelady = Monster.new :name => "Snake-Lady"


Fight::fight conan, stalker

puts conan
puts stalker
