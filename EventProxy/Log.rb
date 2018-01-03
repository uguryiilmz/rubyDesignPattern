require 'singleton'
require 'date'
require 'json'

class Log
  include Singleton

  def initialize
    @log = File.open("log.json","a")
  end

  def log(msg)
    @log.write(msg.to_json)
    @log.flush()
  end

  def getTime
    Time.now.strftime("%d/%m/%Y %H:%M")
  end
end
