require 'webrick'
require './job_action.rb'

srv = WEBrick::HTTPServer.new({ Port: 8082 })

srv.mount_proc('/job') do |req, res|
  res.body = JobAction.new(req).body
end

srv.start
