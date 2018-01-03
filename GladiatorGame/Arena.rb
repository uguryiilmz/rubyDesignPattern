require './Gladiator'

class Arena
  def initialize
    raise NotImplementedError
  end

  def templateMethod(character)
    battle(character)
    iqBattle(character)
    speedBattle(character)
  end

  def battle(character)
    raise NotImplementedError
  end

  def iqBattle(character)
    raise NotImplementedError
  end

  def speedBattle(character)
    raise NotImplementedError
  end

end
