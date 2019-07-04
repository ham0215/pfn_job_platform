require 'net/http'
require 'json'

class Server
  class << self
    def start
      srv = new
      yield(srv)
      srv.close if srv
    ensure
    end
  end

  def initialize
    @http = Net::HTTP.start('server', 8082)
  end

  def close
    @http.finish
  end

  def job(time)
    res = @http.get("/job?time=#{time}")
    return if res.code != "200"

    JSON.parse(res.body)
  end
end
