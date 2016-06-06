require  'rest-client'

class HttpHeaders
  def initialize
  end

  def run
    puts "Ingrese el dominio"
    @dom = gets.chomp	
    @get = RestClient.get 'http://api.hackertarget.com/httpheaders/', {:params => {:q => @dom}}
    puts @get
  end
end