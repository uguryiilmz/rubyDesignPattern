class Gladiator
  attr_accessor :health
  attr_reader :name, :speed, :strength ,:intelligence, :audience
  def initialize(name,speed,strength,intelligence,health)
    if(speed+strength+intelligence+health<=20)
      @name=name
      @speed=speed
      @strength=strength
      @intelligence=intelligence
      @health=health
      @audience=[]
    else
      raise NotImplementedErrors
    end
  end

  def notifyUsers(event )
    @audience.each do |aud|
      aud.update(event)
    end
  end

  def register(g)
    @audience<<g
  end

  def deregister(g)
    @audience.delete(g)
  end

end
