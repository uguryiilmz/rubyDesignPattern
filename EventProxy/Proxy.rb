require 'open-uri'
require 'openssl'


class Proxy
  #silence_warnings do
    OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE  #unless Rails.env.production?
  #end

  def initialize()
    @url="baseProxy" #it will not be instantiated
  end

  def connection
      result=open(@url)
      response_status=result.status
      #if(response_status[0]=="200")
      @body=JSON.parse(result.read)
      puts("Status is "+ response_status[0],"Server Message is "+ response_status[1])
      return @body  
  end

  def connection_error
    puts "Connection error with the api"
  end

  def fallback
    raise NotImplementedError
  end

  def silence_warnings
    with_warnings(nil) { yield }
  end

  def get_content
    raise notImplementedMethod
  end

end
