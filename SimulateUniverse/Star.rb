require './Planet'
require './Probe'

class Star
   attr_accessor :x, :y, :z,:range_of_planets,:planets
  def initialize(star_id)
    @x=rand(8...2**64-1)
    @y=rand(8...2**64-1)
    @z=rand(8...2**64-1)
    @rockyCounter=0
    @gaseousCounter=0
    @habitableCounter=0
    @planets=[];
    @chances_of_life=0;
    @range_of_planets=0;
    @goldilock_zone=0;
    @star_id=star_id
    @type_of_star=""
    p=-1
    (0..@range_of_planets).each do


      type=rand(3)

      if type==0
        p= RockyPlanet.new(rand(0...10000),false,"r"+  @rockyCounter.to_s,@chances_of_life,@goldilock_zone)
          @rockyCounter=@rockyCounter+1
      elsif type==1
        p= GaseousPlanet.new(rand(0...10000),false,"g"+@gaseousCounter.to_s,@chances_of_life,@goldilock_zone)
        @gaseousCounter=@gaseousCounter+1
      else
        p= HabitablePlanet.new(rand(0...10000),false,"h"+  @habitableCounter.to_s,@chances_of_life,@goldilock_zone)
        @habitableCounter=@habitableCounter+1
      end
        @planets<< p
    end
  end

  def to_s
     "KS: #{@x} is   #{@y} #{@z} "
   end
end



class DwarfStar<Star
   attr_accessor :chances_of_life, :range_of_planets, :goldilock_zone, :recharge_amount,:planets,:star_id,:type_of_star
   @@r =Random.new;
  def initialize(star_id)
    super(star_id)
    @chances_of_life=0.06;
    @range_of_planets=@@r.rand(8...15);
    @goldilock_zone=(30..90)
    @recharge_amount=2**20
    @planets=[];
    @type_of_star="d"
    p=-1
    (0..@range_of_planets).each do


      type=rand(3)

      if type==0
        p= RockyPlanet.new(rand(0...10000),false,"r"+@rockyCounter.to_s,@chances_of_life,@goldilock_zone)
        @rockyCounter=@rockyCounter+1
      elsif type==1
        p= GaseousPlanet.new(rand(0...10000),false,"g"+@gaseousCounter.to_s,@chances_of_life,@goldilock_zone)
        @gaseousCounter=@gaseousCounter+1
      else
        p= HabitablePlanet.new(rand(0...10000),false,"h"+@habitableCounter.to_s,@chances_of_life,@goldilock_zone)
        @habitableCounter=@habitableCounter+1
      end
        @planets<< p
    end


  end

  def to_s
     "KS: #{@x}  #{@y} #{@z} #{@chances_of_life} #{@range_of_planets} #{@goldilock_zone} #{@recharge_amount}"
  end

  def printData
    print("x is ",@x, " y is ",@y, " z is ",@z, " chances of life is ",@chances_of_life," range of planet is ",@range_of_planets," goldilock_zone is ",@goldilock_zone," recharge amount is ",@recharge_amount);

  end
end

class GiantStar<Star
   attr_accessor :chances_of_life, :range_of_planets, :goldilock_zone, :recharge_amount,:planets,:star_id,:type_of_star
   @@r=Random.new;
   def initialize(star_id)
    super(star_id)
    @chances_of_life=0.0005
    @range_of_planets=@@r.rand(5...10)
    @goldilock_zone=(100..250)
    @recharge_amount=2**30
    @type_of_star="g"
    @star_id=star_id
    i=0
    j=0;
    k=0;
    @planets=[];
    p=-1
    (0..@range_of_planets).each do


      type=rand(3)

      if type==0
        p= RockyPlanet.new(rand(0...10000),false,"r"+@rockyCounter.to_s,@chances_of_life,@goldilock_zone)
        @rockyCounter=@rockyCounter+1
      elsif type==1
        p= GaseousPlanet.new(rand(0...10000),false,"g"+@gaseousCounter.to_s,@chances_of_life,@goldilock_zone)
        @gaseousCounter=@gaseousCounter+1
      else
        p= HabitablePlanet.new(rand(0...10000),false,"h"+@habitableCounter.to_s,@chances_of_life,@goldilock_zone)
        @habitableCounter=@habitableCounter+1
      end
        @planets<< p
    end

  end

  def to_s
     "KS: #{@x} is   #{@y} #{@z} #{@chances_of_life} #{@range_of_planets} #{@goldilock_zone}"
  end


    def printData
      print("x is ",@x, " y is ",@y, " z is ",@z, " chances of life is ",@chances_of_life," range of planet is ",@range_of_planets," goldilock_zone is ",@goldilock_zone," recharge amount is ",@recharge_amount);
    end
end

class MediumStar<Star
   attr_accessor :chances_of_life, :range_of_planets, :goldilock_zone, :recharge_amount,:planets,:star_id,:type_of_star
   @@r=Random.new;
  def initialize(star_id)
   super(star_id)
   @chances_of_life=0.0009
   @range_of_planets=@@r.rand(2...9);
   @goldilock_zone=(60..140)
   @recharge_amount=2**25
   @type_of_star="m"
   @star_id=star_id
   i=0
   j=0;
   k=0;
   @planets=[];
   p=-1
   (0..@range_of_planets).each do



     type=rand(3)

      if type==0
       p= RockyPlanet.new(rand(0...10000),false,"r"+@rockyCounter.to_s,@chances_of_life,@goldilock_zone)
        @rockyCounter=@rockyCounter+1
     elsif type==1
       p= GaseousPlanet.new(rand(0...10000),false,"g"+  @gaseousCounter.to_s,@chances_of_life,@goldilock_zone)
        @gaseousCounter=  @gaseousCounter+1
      else
        p= HabitablePlanet.new(rand(0...10000),false,"h"+@habitableCounter.to_s,@chances_of_life,@goldilock_zone)
        @habitableCounter= @habitableCounter+1
      end
       @planets<< p
    end

  end

  def to_s
     "KS: #{@x} is   #{@y} #{@z} #{@chances_of_life} #{@range_of_planets} #{@goldilock_zone}"
  end


    def printData
      print("x is ",@x, " y is ",@y, " z is ",@z, " chances of life is ",@chances_of_life," range of planet is ",@range_of_planets," goldilock_zone is ",@goldilock_zone," recharge amount is ",@recharge_amount);

    end
end
