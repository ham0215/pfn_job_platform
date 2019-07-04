require './server.rb'

Server.start do |srv|
  p srv.job('00:00:00')
  p srv.job('00:00:05')
end
