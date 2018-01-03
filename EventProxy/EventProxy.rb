require 'open-uri'
require 'openssl'
require 'json'
require './Proxy'
require './LocationProxy'

class EventProxy<Proxy

    def initialize(locationProxy)
      begin
        puts "Select one of the categories below "
        puts "1)Sport "
        puts "2)Music "
        puts "3)Art"
        @choice=gets.chomp
        if(@choice=="1")
          @choice="Sport"
        elsif(@choice=="2")
          @choice="Music"
        elsif(@choice=="3")
           @choice="Art"
        else
          puts "Please choice from one of the above"
        end
        Log.instance.log("User choice is  " + @choice.to_s)
        #puts "choice is ", choice
        get_time()
        #puts("month is ", @month, "year is ", @year, "day is  ", @day, "hour is ",@hour)
        date=@year.to_s+"-" +@month.to_s + "-" + @day.to_s + "T05:57:00Z"
        #puts "date is ",date
        @url="https://app.ticketmaster.com/discovery/v2/events.json?apikey=BOU31QB99gNcJVRUGZXMUTNTGKMUiZzT&startDateTime="+ date + "&city="+locationProxy.get_content + "&classificationName="+ @choice
        @result=self.connection
        if !@result["_embedded"].nil?
          @events=@result["_embedded"]["events"]
          Log.instance.log("UGUGUGUGUGUUGR Date "+ date.to_s+ "TicketMaster API log"+ @events.to_s)
          #@eventdetails=@events[0]["dates"]
          #puts "local time is",@eventdetails["start"]["localTime"]
          #puts "local date is",@eventdetails["start"]["localDate"]
          puts "List of the events are shown for you"
          puts @events.size
          for i in 0..@events.length-1
            Log.instance.log("Date "+ date.to_s + "List of the events are"+ @events[i]["name"]+ " Exact Date is"+" "+ @events[i]["dates"]["start"]["localDate"]+" Exact time is "+ " "+ @events[i]["dates"]["start"]["localTime"])
            puts @events[i]["name"]+ " Exact Date is"+" "+ @events[i]["dates"]["start"]["localDate"]+" Exact time is "+ " "+ @events[i]["dates"]["start"]["localTime"]
            puts " "
           end
         else
           puts "There are no events related to that category"
           Log.instance.log("Date "+ date.to_s + " There are no events related to that category ")
         end
       rescue
         fallback
       end

    end

    def get_content
      return @result
    end

    def get_time()
      time=Time.new
      @year=time.year
      @month=time.month
      @day=time.day
      @hour=time.hour
    end

    def fallback
      Log.instance.log("Could not connect to TicketmasterAPI.")
      if(@choice=="Sport")
        puts( "Binghamton Devils vs. Wilkes Barre Scranton Penguins",
             "Binghamton Devils vs. Rochester Americans",
             "WWE Live",
             "Binghamton Devils vs. Belleville Senators",
             "Binghamton Devils vs. Rochester Americans",
             "Binghamton Devils vs. Providence Bruins",
             "Binghamton Devils vs. Syracuse Crunch",
             "Binghamton Devils vs. Hartford Wolf Pack",
             "Binghamton Devils vs. Charlotte Checkers",
             "Binghamton Devils vs. Hershey Bears",
             "Binghamton Devils vs. Syracuse Crunch",
             "Binghamton Devils vs. Utica Comets",
             "Binghamton Devils vs. Charlotte Checkers",
             "Binghamton Devils vs. Toronto Marlies",
             "Binghamton Devils vs. Lehigh Valley Phantoms",
             "Binghamton Devils vs. Laval Rocket",
             "Binghamton Devils vs. Belleville Senators",
             "Binghamton Devils vs. Wilkes Barre Scranton Penguins",
             "Binghamton Devils vs. Utica Comets",
             "Binghamton Devils vs. Wilkes Barre Scranton Penguins")
        elsif(@choice=="Music")
          puts("There are no events related to that category")
        elsif (@choice=="Art")
          puts("Cirque Musica Holiday presents BELIEVE",
               "The Nutcracker",
               "Lewis Black: The Joke's On US Tour",
               "Jersey Boys (Touring)",
               "Adam Trent",
               "Dirty Dancing (Touring)",
               "A Chorus Line (Touring)",
               "A Chorus Line (Touring)",
               "Jersey Boys (Touring)",
               "Jersey Boys (Touring)",
               "Jersey Boys (Touring)",
               "Dirty Dancing (Touring)")
        else

        end

        end



  end
