module Fight
    def self.fight hero, enemies, &block
        enemy = enemies.rand.clone
        while hero.is_alive? && enemy.is_alive?
            yield hero, enemy
        end
        
        if hero.is_alive?
          hero.gain_exp enemy.xp
          hero.bodycount += 1
        end
    end

    module Experience
        module Source
            def xp
                @lvl
            end
        end

        module Receiver
            def gain_exp exp
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
