
require_relative "booleans"
require_relative "none"
require_relative "type"

def print(*args)
  if args.is_a? Array
    puts args.join(" ")
  else
    puts(args)
  end
end

def range(value)
  Range.new(0,value - 1)
end
