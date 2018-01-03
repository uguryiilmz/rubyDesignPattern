require './Gladiator'
class JediArena<Arena

  def initialize()
    @character
    @weapon
    @status=true #to determine win or lose at the end of the game
  end

  def chooseWeapon(character)
    puts "-------------------What type of weapons would you like to use------------------- "
    puts""
    puts "-------------------Type 1, 2 or 3--------------------------"
    puts ""
    puts "-------------------Fighting Against Darth Vader---------------------------"
    puts ""
    puts "1) -------------------LightSaber-------------------"
    puts ""
    puts "2) -------------------BlasterGun-------------------"
    puts ""
    puts "3) -------------------BlasterRifle-------------------"
    puts " "
    @weapon=gets.chomp()
  end

  def battle(character)
      @character=character
      chooseWeapon(@character)
      if(@weapon=="1")
        @character.health=@character.health-@character.strength-@character.speed
      elsif(@weapon=="2")
        @character.health=@character.health-@character.strength*2-@character.speed*2
      elsif(@weapon=="3")
        @character.health=@character.health-@character.strength*2-@character.speed*3
      else
        puts Invalid Weapon
      end

      if @character.health<2
        puts "GET HURTED"
        @character.notifyUsers("harmed")
      end
      if @character.health<0
        puts "YOU LOST"
        @character.notifyUsers("lose")
        @status=false
        if @status==false
          puts "Failed first task. Start the game again"
          exit
        end
      else
        puts "YOU WON"
        @character.notifyUsers("win")
      end
  end

  def iqBattle(character)
    @character=character
    iq=@character.intelligence
    if iq < 2
      puts "What is the result of 25*64"
      x=gets.chomp().to_i
      if x==1600
        puts "YOU WON"
        @character.notifyUsers("iqWin")
      else
        puts "LOST"
        @character.notifyUsers("lose")
        @status=false
        if @status==false
          puts "Failed the iq task. Start the game again"
          exit
        end
      end
    elsif iq<5
      puts "What is the result of 10*12"
      x=gets.chomp().to_i
      if x==120
        puts "YOU WON"
        @character.notifyUsers("iqWin")
      else
        puts "YOU LOST"
        @character.notifyUsers("lose")
        @status=false
        if @status==false
          puts "Failed the iq task. Start the game again"
          exit
        end
      end
    else
      puts "What is the result of 1 +1 "
      x=gets.chomp().to_i
      if x==2
        puts "YOU WON"
        @character.notifyUsers("iqWin")
      else
        puts "YOU LOST"
        @character.notifyUsers("lose")
        @status=false
        if @status==false
          puts "Failed the iq task. Start the game again"
          exit
        end
      end
    end
  end

  def speedBattle(character)
    @character=character
    speed=@character.speed
    riddle="Who makes it, has no need of it.
Who buys it, has no use for it.
Who uses it can neither see nor feel it.
What is it?"
    puts riddle

    if speed<2
      limit=7
      beginning_time = Time.now
      x=gets.chomp()
      total_time = Time.now - beginning_time
      if x=="nothing" and total_time<limit
        puts "YOU WON"
        @character.notifyUsers("speedWin")
      else
        puts "YOU LOST"
        @character.notifyUsers("lose")
        @status=false
        if @status==false
          puts "Failed the speed task. Start the game again"
          exit
        end
      end
    elsif speed<5
      limit=15
      beginning_time = Time.now
      x=gets.chomp()
      total_time = Time.now - beginning_time
      if x=="nothing" and total_time<limit
        puts "YOU WON"
        @character.notifyUsers("speedWin")
      else
        puts "YOU LOST"
        @character.notifyUsers("lose")
        @status=false
        if @status==false
          puts "Failed the speed task. Start the game again"
          exit
        end
      end
    else
      limit=25
      beginning_time = Time.now
      x=gets.chomp()
      total_time = Time.now - beginning_time
      if x=="nothing" and total_time<limit
        puts "YOU WON"
        @character.notifyUsers("speedWin")
      else
        puts "YOU LOST"
        @character.notifyUsers("lose")
        @status=false
        if @status==false
          puts "Failed the speed task. Start the game again"
          exit
        end
      end
    end
  end
end
