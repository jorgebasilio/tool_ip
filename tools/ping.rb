require  'rest-client'

class Ping
  def initialize 
  end

  def run
    puts "Ingrese el dominio o numero IP"
    @dom = gets.chomp	
    @ping = RestClient.get 'http://api.hackertarget.com/nping/', {:params => {:q => @dom}}
    puts @ping
  end
end