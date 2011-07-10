require_relative 'creature'

class Hero < Creature
    include Fight::Experience::Receiver
end
