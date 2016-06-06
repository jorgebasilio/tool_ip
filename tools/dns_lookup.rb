require  'rest-client'

class DnsLookup
  def initialize
  end

  def run
    puts "Ingrese el dominio o numero ip"
    dom = gets.chomp	
    get = RestClient.get 'http://api.hackertarget.com/reversedns/', {:params => {:q => @dom}}
    puts @get
  end
end