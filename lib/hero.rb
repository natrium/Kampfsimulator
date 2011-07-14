require_relative 'creature'

class Hero < Creature
  include Fight::Experience::Receiver
  attr_accessor :bodycount
  
  def engages creatures, &block
    while self.is_alive?
      Fight::fight self, creatures do |creature1, creature2| 
        yield creature1, creature2
      end
    end
  end
end
