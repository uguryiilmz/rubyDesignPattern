require './Star'
require './Planet'
require './Probe '


class Universe
  attr_accessor:stars
  def initialize(max_stars)
    @stars= []
    giantCounter=0
    dwarfCounter=0
    mediumCounter=0
    s=-1;
    rockyCounter=0
    gaseousCounter=0
    habitableCounter=0

    (0..max_stars-1).each do


      type=rand(3)

      if type==0
        s= GiantStar.new("g"+giantCounter.to_s)
        giantCounter=giantCounter+1
      elsif type==1
        s= DwarfStar.new("d"+dwarfCounter.to_s)
        dwarfCounter=dwarfCounter+1
      else
        s= MediumStar.new("m"+mediumCounter.to_s)
        mediumCounter=mediumCounter+1
      end
        @stars << s
    end
    printUniverse()
    probe=Probe.new()
    probe.nextStar(@stars)


    end

    def printUniverse()
          giant =0;
          dwarf=0;
          medium=0;
          gas=[0,0,0];
          rock=[0,0,0];
          habitable=[0,0,0];
          life=[0,0,0];
          @stars.each{|s|
            if s.is_a? GiantStar
              giant+=1
              s.planets.each{|p|
                if p.is_a? GaseousPlanet
                  gas[0]=gas[0]+1;
                elsif p.is_a? RockyPlanet
                  rock[0]=rock[0]+1;
                else
                  habitable[0]=habitable[0]+1;
                  #if p.inhabited
                    #life[0]=life[0]+1;
                  #end
                end
              }
            elsif s.is_a? DwarfStar
              dwarf=dwarf+1;
              s.planets.each{|p|
                if p.is_a? GaseousPlanet
                  gas[1]=gas[1]+1;
                elsif p.is_a? RockyPlanet
                  rock[1]=rock[1]+1;
                else
                  habitable[1]=habitable[1]+1;
                  ##if p.inhabited
                    #life[1]=life[1]+1;
                  #end
                end
              }
            else
              medium=medium+1;
              s.planets.each{|p|
                if p.is_a? GaseousPlanet
                  gas[2]=gas[2]+1;
                elsif p.is_a? RockyPlanet
                  rock[2]=rock[2]+1;
                else
                  habitable[2]=habitable[2]+1;
                  ##if p.inhabited
                    ##life[2]=life[2]+1;
                  #end
                end
              }
            end
            }
            print "Total number of stars in my universe :"," ", giant+medium+dwarf,"\n"
            print "\n"
            print "There are"," ", giant ," ","giant star with :","\n"
            print "\n"
            print "    ",gas[0] ," GaseousPlanet","\n"
            print "    ", rock[0]," RockyPlanet","\n"
            print "    ",habitable[0]," HabitablePlanet", "\n"
            print "\n"
            print "There are ",dwarf ," dwarf star with :","\n"
            print "\n"
            print "    ",gas[1] ," GaseousPlanet","\n"
            print "    ", rock[1]," RockyPlanet","\n"
            print"    ",habitable[1]," HabitablePlanet","\n"
            print "\n"
            print "There are ",medium ," medium star with :","\n"
            print "\n"
            print "    ",gas[2] ," GaseousPlanet","\n"
            print "    ", rock[2]," RockyPlanet","\n"
            print "    ",habitable[2]," HabitablePlanet","\n"
    end
  end
