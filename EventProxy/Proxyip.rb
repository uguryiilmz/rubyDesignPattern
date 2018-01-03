require 'open-uri'
require 'openssl'
require 'json'
require './Proxy'
require './Log'

class Proxyip<Proxy

    def initialize()
      begin
        get_time
        date=@year.to_s+"-" +@month.to_s + "-" + @day.to_s
        @url="https://api.ipify.org?format=json"
        @result=self.connection
        Log.instance.log("Date "+ date.to_s + "IP API log" + @result.to_s)
        Log.instance.log("Date "+ date.to_s + "Your ip addres is "+ self.get_content)
        puts "Your ip address is " + self.get_content
      rescue
        fallback
      end
    end

    def get_content
        return @result["ip"]
    end


    def get_time
      time=Time.new
      @year=time.year
      @month=time.month
      @day=time.day
      @hour=time.hour
    end

    def fallback
      puts "Your ip address is 192.255.143.54"
      Log.instance.log("Could not connect to API. Your ip address is 192.255.143.54")
    end
end
