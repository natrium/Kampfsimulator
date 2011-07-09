module Fight
    def self.fight fighter1, fighter2
        3.times do
          print fighter1.name + " attacks " + fighter2.name + " and does '"
          print fighter1.attack(fighter2).to_s + "' damage\n"
          print fighter2.name + " attacks " + fighter1.name + " and does '"
          print fighter2.attack(fighter1).to_s + "' damage\n"
          sleep 0.5
        end
    end
end
