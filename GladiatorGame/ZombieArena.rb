require './Gladiator'

class ZombieArena<Arena

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
    puts "-------------------Fighting Against Bunch Of Zombies in the Arena---------------------------"
    puts ""
    puts "1) -------------------Repeating Rifle-------------------"
    puts ""
    puts "2) -------------------Grenade-------------------"
    puts ""
    puts "3) -------------------Sword-------------------"
    puts " "
    @weapon=gets.chomp()

  end
  def battle(character)
    @character=character
    @zombiesHealth=20
    @zombiesStrength=2
    chooseWeapon(@character)
    while(@character.health> 0 && @zombiesHealth>0)
      if @weapon=="1"
        @character.health=@character.health*2-@zombiesStrength-@character.strength/2
        @zombiesHealth=  @zombiesHealth- @character.strength*2
      elsif @weapon =="2"
        @character.health=@character.health-@zombiesStrength*3-@character.strength*2
        @zombiesHealth=  @zombiesHealth- @character.strength
      elsif @weapon=="3"
        @character.health=@character.health-@zombiesStrength*4-@character.strength*2
        @zombiesHealth=  @zombiesHealth- @character.strength/2
      else
        puts Invalid Weapon
      end
    end

    if(@character.health<3)
      puts "Harmed "
      @character.notifyUsers("harmed")
      puts ""
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
      puts"YOU WON"
      @character.notifyUsers("win")
      puts "Go to the next step"
      puts ""
    end
  end

  def iqBattle(character)
    @character=character
    iq=@character.intelligence
    if iq < 3
      puts "Who was the 23rd president of the US?"
      x=gets.chomp()
      if x=="7"
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
      puts "How Many Continents are there in the world"
      x=gets.chomp()
      if x=="7"
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
      puts "What language do the US people speak"
      x=gets.chomp()
      if x=="English" or x=="english"
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
    var="A skunk sat on a stump and thunk the stump stunk but the stump thunk the skunk stunk"
    puts var
    puts " "
    puts "Enter the same sentence in the above in a certain amount of time"
    puts " "
    if speed<2
      limit=15
      beginning_time = Time.now
      x=gets.chomp()
      total_time = Time.now - beginning_time
      if x==var and total_time<limit
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
      limit=25
      beginning_time = Time.now
      x=gets.chomp()
      total_time = Time.now - beginning_time
      if x==var and total_time<limit
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
      limit=35
      beginning_time = Time.now
      x=gets.chomp()
      total_time = Time.now - beginning_time
      if x==var and total_time<limit
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
