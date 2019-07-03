require 'singleton'
require './job.rb'

class Jobs
  include Singleton

  def initialize
    load_jobs
  end

  def find(time)
    @jobs[time]
  end

  private

  #
  # @jobs = { created: { id: int, created: string, priority: string, tasks: [int] } }, ...
  #
  def load_jobs
    @jobs = {}
    Dir.glob('./data/*.job').each do |file|
      job = File.read(file)
      m = job.match(/\[JobID\]\n(.+)\n\n\[Created\]\n(.+)\n\n\[Priority\]\n(.+)\n\n\[Tasks\]\n(.+)/m)
      @jobs[m[2]] = Job.new(m[1].to_i, m[2], m[3], m[4].split("\n").map(&:to_i))
    end
  end
end
