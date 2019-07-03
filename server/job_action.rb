require './jobs.rb'

class JobAction
  def initialize(req)
    @req = req
    @jobs = Jobs.instance
  end

  def body
    job = @jobs.find(time)
    job.to_json
  end

  private

  def time
    @req.query['time']
  end
end
