module Dice
  srand Time.now.to_i
  def self.d20
    dice 20
  end

  def self.d10
    dice 10
  end

  def self.d8
    dice 8
  end

  def self.d6
    dice 6
  end

  def self.d4
    dice 4
  end

  def self.d3
    dice 3
  end

  def self.dice faces
    1 + rand(faces)
  end
end
