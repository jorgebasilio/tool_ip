require 'rest-client'

class GetIpGeo
  def initialize
  end

  def run
    puts "Ingrese el dominio o numero IP"
    @dom = gets.chomp	
    @get = RestClient.get 'http://api.hackertarget.com/geoip/', {:params => {:q => @dom}}
    puts @get
  end
end