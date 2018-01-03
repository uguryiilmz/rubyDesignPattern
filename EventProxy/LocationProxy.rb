require 'open-uri'
require 'openssl'
require 'json'
require './Proxy'
require './Proxyip'

class LocationProxy<Proxy

    def initialize(ipProxy)
      begin
        @url="https://freegeoip.net/json/"+ipProxy.get_content
        @result=self.connection
        get_time
        date=@year.to_s+"-" +@month.to_s + "-" + @day.to_s
        Log.instance.log("Date"+ date.to_s + "Location API log" + @result.to_s)
        Log.instance.log("Date"+ date.to_s+ "Your location address is " + self.get_content)
        puts "Your location address is "+ self.get_content
      rescue
        fallback
      end
    end


    def get_content
      return @result["city"]
    end

    def get_time
      time=Time.new
      @year=time.year
      @month=time.month
      @day=time.day
      @hour=time.hour
    end

    def fallback
      puts "Your location is Binghamton"
      Log.instance.log("Could not connect to API. Your location is Binghamton")
    end


end
