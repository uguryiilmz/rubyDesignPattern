require './Proxy'
require './EventProxy'
require './LocationProxy'
require './Proxyip'


def main()
  event=EventProxy.new(LocationProxy.new(Proxyip.new()))

end
main
