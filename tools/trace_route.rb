require  'rest-client'

class TraceRoute
  def initialize
  end

  def run
    puts "Ingrese el dominio o numero IP"
    @dom = gets.chomp	
    @get = RestClient.get 'http://api.hackertarget.com/mtr/', {:params => {:q => @dom}}
    puts @get
  end
end