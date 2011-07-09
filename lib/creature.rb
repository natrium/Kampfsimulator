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
    @hp = 2 * con + 1 * @str
  end

  def attack enemy
    damage = @str + @str * Dice::d3 - enemy.con * Dice::d3
    enemy.hp =- damage
    damage
  end

end
