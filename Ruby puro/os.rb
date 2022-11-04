require 'os'

def my_os
  if OS.windows?
    "windows"
  elsif OS.linux?
    "linux"
  elsif OS.mac?
    "osx"
  else
    "Nao consegui identificar"
  end
end

puts "meu pc possui #{OS.cpu_count} cores, é #{OS.bits} bits e o sistema operacional é #{my_os}"