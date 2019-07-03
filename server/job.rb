require 'json'

class Job
  attr_reader :id, :created, :priority, :tasks

  def initialize(id, created, priority, tasks)
    @id = id
    @created = created
    @priority = priority
    @tasks = tasks
  end

  def to_json
    { job_id: id, created: created, priority: priority, tasks: tasks }.to_json
  end
end
