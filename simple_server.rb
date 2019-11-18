require 'socket'

server = TCPServer.new(2345) #2345 is the port number

socket = server.accept

they_said = String.new

while they_said != "quit" do

socket.puts "What do you say?"

they_said = socket.gets.chomp

socket.puts "You said: #{they_said}. Goodbye!"

end

socket.close
