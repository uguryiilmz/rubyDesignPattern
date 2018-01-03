require './Star'
require './Planet'

class Probe
      def initialize
        @startCord=[0,0,0]
        @currentCord=[0,0,0] #also current cord
        @visitedStars=[]
        @exploredPlanets=[]
        @fuel=2**100
        @totalDistance=0
        @intelligentLife
      end




      def  nextStar(starList)

        for i in 0..starList.length-1
              @visitedStars<<starList[i]
              for j in 0..starList[i].planets.length-1
                    if (starList[i].planets[j].planet_type.to_s=="habitable") && (starList[i].planets[j].life.to_s=="true")
                      @intelligentLife=starList[i].planets[j]
                      puts""
                      puts "Traveled "+ Math.sqrt(starList[i].x ** 2 + starList[i].y ** 2 + starList[i].z ** 2).to_s
                      PrintProbe()
                      puts "Life Found at "+ @intelligentLife.id

                      exit
                    else
                      @fuel=@fuel-1000;
                      @exploredPlanets<<starList[i].planets[j]
                      @currentCord[0]=starList[i].x
                      @currentCord[1]=starList[i].y
                      @currentCord[2]=starList[i].z
                      if @fuel<1000
                           if starList[i].planets[j].type_of_star=="m"
                             @fuel=@fuel+2**25
                           elsif  starList[i].planets[j].type_of_star=="d"
                              @fuel=@fuel+2**20
                            else
                              @fuel=@fuel+2**30
                            end

                      end


          end
        end

        end

      end

      def PrintProbe()
        puts "Visited "+ @visitedStars.length.to_s+ " stars  "
        puts "Explored "+ @exploredPlanets.length.to_s+" planets "
      end

end
