require 'rest-client'

class GetCountry
  def initialize
  end

  def run
    puts "Ingrese el dominio o numero IP"
    @dom = gets.chomp	
    @get = JSON.parse(RestClient.get('http://geoip.nekudo.com/api/' + @dom ))
    puts "Country = #{@get["country"]["name"]}"
  end
end