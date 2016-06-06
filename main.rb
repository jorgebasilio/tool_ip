@tools = []

def get_tools!
  Dir["tools/*.rb"].each do |file| 
    require_relative file
    @tools << File.basename(file, ".rb")
  end
end

def tool_list
  @tools.each_with_index do |tool, index|
    puts "#{index + 1} - #{tool}"
  end
  puts "0 - Salir\n\n\n"
end

get_tools!

loop do 
  system ("clear")
  puts '¿Qué desea seleccionar?'
  tool_list

  option = gets.chomp
  break if option == '0'

  file = @tools[(option.to_i) - 1]
  file_name = File.basename(file, ".rb")

  class_name = file_name.gsub(/^[a-z0-9]|_[a-z0-9]/){ |a| a.upcase }.gsub(/_/,'')
  klass = Object.const_get(class_name).new
  system ("clear")
  klass.run
  puts 'Enter para continuar...'
  gets.chomp
  system ("clear")
  puts "Preciona 'y' para volver al menu principal"
  puts "preciona cualquier otra tecla para salir\n\n\n"
  option = gets.chomp
  break if(option != 'y' && option != 'Y')
end