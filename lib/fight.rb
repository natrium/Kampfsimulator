module Fight
    def self.fight fighter1, fighter2
        while fighter1.is_alive? && fighter2.is_alive?
          print fighter1.name + " attacks " + fighter2.name + " and does '"
          print fighter1.attack(fighter2).to_s + "' damage\n"
          print fighter2.name + " attacks " + fighter1.name + " and does '"
          print fighter2.attack(fighter1).to_s + "' damage\n"
          sleep 0.5
        end
    end

    module Experience
        module Source
            def xp
                puts @lvl
                @lvl
            end
        end

        module Receiver
            def gain_exp exp
                puts "#{@exp} vs. #{exp}"
                @exp += exp
                while @exp > @lvl * 5
                    level_up
                end                
            end

            def level_up
                @exp -= @lvl * 5
                @lvl += 1

                puts "Select one Attribute to be raised:\n" +
                      "S) Strength\n" +
                      "C) Constitution\n" +
                      "D) Dexterity\n" +
                      "I) Intelligence\n"
                input = gets.chomp        
            	case input
                    when 's', 'S'
                      @str += 1
                    when 'c', 'C'
                      @con += 1
                    when 'd', 'D'
                      @dex += 1
                    when 'i', 'I'
                      @int += 1
                end

                #restore_hp
            end

        end
    end
end
