require './Gladiator'
require './Audience'
require './Arena'
require './JediArena'
require './ZombieArena'

def main()
  a=Gladiator.new("ugur",4,4,4,8);
  aud=-1
  (0..9).each do
    aud=Audience.new(rand(3))
    a.register(aud)
  end
  jedi=JediArena.new()
  jedi.templateMethod(a)
  zombie=ZombieArena.new()
  zombie.templateMethod(a);
  (0..9).each do
    a.deregister(aud)
  end

end
main
