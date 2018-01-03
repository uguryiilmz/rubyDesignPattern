class Planet
  attr_accessor :distance, :life, :id ,:chance_of_life ,:goldilock_zone
  def initialize()
    raise NotImplementedError
  end

  def printDatas
    print(" distance ", @distance, " life ", @life, " id ",@id)
  end

end

class RockyPlanet<Planet
  attr_accessor :distance, :life, :id ,:chance_of_life, :goldilock_zone,:planet_type
  def initialize(distance,life,id,chance_of_life,goldilock_zone)
    @distance=distance
    @life=life
    @id=id
    @chance_of_life=chance_of_life
    @goldilock_zone=goldilock_zone
    @planet_type="rocky"

  end
  def printDatas()
    print(" distance ", @distance, " life ", @life, " id ",@id)
  end
end


class GaseousPlanet<Planet
  attr_accessor :distance, :life, :id ,:chance_of_life, :goldilock_zone,:planet_type
  def initialize(distance,life,id,chance_of_life,goldilock_zone)
    @distance=distance
    @life=life
    @id=id
    @chance_of_life=chance_of_life
    @goldilock_zone=goldilock_zone
    @planet_type="gaseous"

  end

  def printDatas()
    print(" distance ", @distance, " life ", @life, " id ",@id)
  end
end

class HabitablePlanet<Planet
attr_accessor :distance, :life, :id ,:chance_of_life, :goldilock_zone,:planet_type
  def initialize(distance,life,id,chance_of_life,goldilock_zone)
    @distance=distance
    @life=life
    @id=id
    @chance_of_life=chance_of_life
    @goldilock_zone=goldilock_zone
    @planet_type="habitable"
      chance=rand(10000)
      if (chance < chance_of_life*10000) && (goldilock_zone.member?(distance))
        @life=true
      end

  end

  def printDatas()
    print(" distance ", @distance, " life ", @life, " id ",@id)
  end
end
