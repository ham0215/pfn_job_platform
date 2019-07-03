require 'net/http'

res = Net::HTTP.start('server', 8080) do |http|
  http.get('/job?time=00:00:00')
end

p res.body.inspect
