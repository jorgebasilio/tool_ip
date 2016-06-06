require  'rest-client'

class Geolication
  def initialize
  end

  def run
    puts "Ingrese el dominio o numero IP"
    @dom = gets.chomp	
    @get = JSON.parse(RestClient.get('http://geoip.nekudo.com/api/' + @dom + "/full"))
    puts "Latitude = #{@get["location"]["latitude"]}\n Longitude = #{@get["location"]["longitude"]}\n Metro code = #{@get["location"]["metro_code"]}\n Time zone = #{@get["location"]["time_zone"]}"
  end
end