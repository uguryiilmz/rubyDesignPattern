
require './Universe'

def main()
  ugur=Universe.new(2**12)
  for i in 0..ugur.stars.length-1
    for j in 0..ugur.stars[i].planets.length-1
      if  ugur.stars[i].planets[j].life.to_s=="true"
        puts "STAR CREATEDDDD"
      end
    end
  end
end
main()
