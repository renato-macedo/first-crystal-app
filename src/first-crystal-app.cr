# TODO: Write documentation for `First::Crystal::App`

# HTTP server
require "http/server"

server = HTTP::Server.new do |context|
  context.response.content_type = "application/json"
  context.response.print "Hello world! The time is #{Time.now}"
end

address = server.bind_tcp 8080
puts "Listening on http://#{address} !"
server.listen