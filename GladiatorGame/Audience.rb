require './Response'

class Audience

  def initialize(type)
    setResponseType(type)
  end

  def update(event)
    if event=="win"
      @a.win
    elsif event=="lose"
      @a.lose
    elsif event=="iqWin"
      @a.iqWin
    elsif event=="speedWin"
      @a.speedWin
    elsif event=="harmed"
      @a.harmed
    else
      puts "invalid event"
    end
  end

  def setResponseType(type)
      @a=-1
    if type==0
        @a=Positive.new()
    elsif type==1
        @a=Savage.new()
    else
        @a=Negative.new()
    end
  end

end
