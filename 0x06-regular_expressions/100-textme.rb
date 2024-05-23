#!/usr/bin/env ruby

log_entry = ARGV[0]

# Extract the sender, receiver, and flags using a regular expression
match = log_entry.match(/\[from:(?<sender>[^\]]+)\] \[to:(?<receiver>[^\]]+)\] \[flags:(?<flags>[^\]]+)\]/)

if match
  sender = match[:sender]
  receiver = match[:receiver]
  flags = match[:flags]
  
  puts "#{sender},#{receiver},#{flags}"
end