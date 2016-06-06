require  'rest-client'

class PageLinks
  def initialize
  end

  def run
    puts "Ingrese el dominio"
    @dom = gets.chomp	
    @get = RestClient.get 'http://api.hackertarget.com/pagelinks/', {:params => {:q => @dom}}
    puts @get
  end
end