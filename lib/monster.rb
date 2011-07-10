require_relative 'creature'

class Monster < Creature
    include Fight::Experience::Source
end
