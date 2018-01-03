class Response
    def initialize
      raise NotImplementedError
    end
end


class Positive
  def initialize

  end
    def win()
      puts " Hail the Gladiator"
    end

    def lose()
      puts "May the good lord be with you"

    end

    def harmed()
      puts "Oh, I am very thankful that he still keeps going"
    end

    def iqWin()
      puts " Smart GUYYYYY"
    end

    def speedWin()
      puts "Is this guy for real... Wow, so fast"
    end

  end





  class Negative
    def initialize

    end

      def win()
        puts "Booooooo, you did not deserve to win"
      end

      def lose()
        puts "You are such a loser. Any man can beat you"

      end

      def harmed()
        puts "Damn, I wish he died"
      end

      def iqWin()
        puts " boooo, this guy is not smart enough... How?"
      end

      def speedWin()
        puts "He was like a turtle... How did he able to win"
      end

    end




    class Savage
      def initialize

      end

        def win()
          puts "Yes... This is what I want to see"
        end

        def lose()
          puts "Damn, that was a terrible duel"

        end

        def harmed()
          puts "Wooooow, I like to see when they are harmed"
        end

        def iqWin()
          puts " This is boring... I want to see blood, not mind games"
        end

        def speedWin()
          puts "Fast,fast,faster..."
        end

      end
