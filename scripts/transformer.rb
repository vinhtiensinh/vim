#!/usr/bin/env ruby

def transform text, command
  return text.instance_eval(command)
end

command  = ARGV[0]
input    = ARGV[1]

if input == '-'
  text = STDIN.read
else
  text  = File.read(input).strip
end

print transform(text, command)
