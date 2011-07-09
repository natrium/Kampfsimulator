require_relative 'dice'

class Creature
  attr_accessor :name, :str, :con, :dex, :int, :exp, :lvl, :hp

  def initialize options = {}
    @name = options[:name] ||= 'Anonymous Creature'
    @str  = options[:str]  ||= 1
    @con  = options[:con]  ||= 1
    @dex  = options[:dex]  ||= 1
    @int  = options[:int]  ||= 1
    @exp  = options[:exp]  ||= 0
    @lvl  = options[:lvl]  ||= 1
    @hp = 10 * @con
  end

  def attack enemy
    damage = @str + @str * Dice::d3
    enemy.hp -= damage
    damage
  end

  def is_alive?
    @hp > 0
  end

  def is_dead?
    @hp <= 0
  end

  def to_s
    str = self.class.to_s + "\n" +
    "#{@name} Level #{@lvl}\n"
    if is_alive?
      str += "HP  = #{@hp}\n"
    else
      str += "[DEAD]\n"
    end
    str += "EXP = #{@exp}\n" +
    "STR = #{@str}\n" +
    "CON = #{@con}\n" +
    "DEX = #{@dex}\n" +
    "INT = #{@int}"
    str
  end
end
