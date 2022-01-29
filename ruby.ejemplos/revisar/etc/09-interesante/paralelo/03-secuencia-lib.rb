
class SequentialProcess
  attr_reader :id, :delay
   @@id = 0

  def initialize(delay)
    @id = @@id
    @@id += 1
    @delay = delay
  end

  def do_something
    puts "[#{@id}] BEGIN  : delay = #{ @delay.to_i}"
    sleep(delay)
    puts "[#{@id}] END   "
  end

end

def begin_work(values)
  puts "="*40
  puts "    Script : #{$0} "
  puts "    Inputs : #{values.to_s}"
  puts "="*40
  @begintime = Time.now
end

def end_work
  duration = Time.now-@begintime
  puts "="*40
  puts "    Total duration = #{duration.to_i}"
  puts "="*40
end

def get_tasks_from(inputs)
  tasks = []
  inputs.each { |n| tasks << SequentialProcess.new(n) }
  return tasks
end
