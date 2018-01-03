TicketMasterAPI->LocationAPI-İpAPI

I have created a project which shows nearby events by location based on user preferences like sport, music , art. To do that, first I need to obtain the
user location. Then, I would be able to demonstrate closer events. To find the location ,there is an api called https://freegeoip.net/json/.
It requires you to give the ip address as parameter. Then, it returns the appropriate location.
To find the ip address, I use ip Api as a proxy class to find the current ip address. The proxy class can be considered
as remote proxy here to access the APIS. I get the user's ip by using that ipAPI and render
that data by using json. After that, I use my location api in another proxy to find the user location in a same way. At the end
of these processes, I find the user's location. After that, I  use ticketMasterApi in another proxy. It wants me to
give the city name as a parameter which I already took from the location api. Besides, I also give current date
and user preferences as parameter in addition to location. All those proxies are used as remote proxies to obtain
data from the apis. I only used proxy pattern until now. I use proxy pattern as I need to
control the access to an object. It will be sitting between user and the apis. It will hide the complexity of
using api from the user. Besides, it will provide more secure area. I also created proxy base class that other proxy
classes could inherit them and follow the same interface When I get the data from an api, it writes out the
data to the json file that I have chosen. Basically, it will be triggered when an events occur.
I write out that json file by using json module by creating json instance by using singleton pattern.
Singleton objects as log object here manages the creation of instance. It controls access to the instance. Whenever,
we need that object to write out to a log file, that class and method should be invoked.
In the end, I use decorator pattern to show the nearby events by location based on user preferences because all of my
proxies are related to each other, I will use decorator the connect them. Basically, it will be like
EventProxy.new(LocationProxy.new(Proxyip.new())) as I mentioned in the above. The decorator pattern allows us to
add behaviour to a given object without having to add another additional behaviours to that object. We literally decorate the proxy objects here.


Sample output-->
Server Message is OK
Your ip address is 198.255.134.154
Status is 200
Server Message is OK
Your location address is Binghamton
Select one of the categories below
1)Sport
2)Music
3)Art
1
Status is 200
Server Message is OK
List of the events are shown for you
20
Binghamton Devils vs. Rochester Americans Exact Date is 2017-11-18 Exact time is
  19:05:00

WWE Live Exact Date is 2018-01-21 Exact time is  17:00:00

Binghamton Devils vs. Belleville Senators Exact Date is 2017-12-16 Exact time is
  19:05:00

Binghamton Devils vs. Rochester Americans Exact Date is 2017-11-25 Exact time is
  19:05:00

Binghamton Devils vs. Providence Bruins Exact Date is 2017-11-22 Exact time is
19:05:00

Binghamton Devils vs. Syracuse Crunch Exact Date is 2017-12-08 Exact time is  19
:05:00

Binghamton Devils vs. Hartford Wolf Pack Exact Date is 2018-04-14 Exact time is
 19:05:00

Binghamton Devils vs. Charlotte Checkers Exact Date is 2017-12-09 Exact time is
 19:05:00

Binghamton Devils vs. Hershey Bears Exact Date is 2018-03-10 Exact time is  19:0
5:00

Binghamton Devils vs. Syracuse Crunch Exact Date is 2017-12-31 Exact time is  18
:05:00

Binghamton Devils vs. Utica Comets Exact Date is 2018-01-13 Exact time is  19:05
:00

Binghamton Devils vs. Charlotte Checkers Exact Date is 2017-12-27 Exact time is
 19:05:00

Binghamton Devils vs. Toronto Marlies Exact Date is 2018-01-20 Exact time is  19
:05:00

Binghamton Devils vs. Lehigh Valley Phantoms Exact Date is 2018-02-24 Exact time
 is  19:05:00

Binghamton Devils vs. Laval Rocket Exact Date is 2018-01-06 Exact time is  19:05
:00

Binghamton Devils vs. Belleville Senators Exact Date is 2018-01-05 Exact time is
  19:05:00
