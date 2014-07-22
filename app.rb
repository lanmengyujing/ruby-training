#!/usr/bin/env ruby

# get input data
Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), './lib')) + "/**/*.rb"].each do |file|
  require file
end

graph = Graph.new

%w(AB5 BC4 CD8 DC8 DE6 AD5 CE2 EB3 AE7).each do |x|
  src, dest, dist = x.split('')
  puts "--> Establishing connection from #{src} to #{dest} with distance #{dist}"
  graph.add(x)
end

%w(A-B-C A-D A-D-C A-E-B-C-D A-E-D).each do |x|
  puts "--> The distance of the route #{x} is: #{graph.direct_distance(x)}"
end

puts "--> The number of trips starting at C and ending at C with a maximum of 3 stops is: #{graph.find_by_max_stop('C', 'C', 3)}"

puts "--> The number of trips starting at A and ending at C with exactly 4 stops is: #{graph.find_by_exact_stops('A', 'C', 4)}"

puts "--> The length of the shortest route from A to C is: #{graph.shortest_length('A', 'C')}"

puts "--> The length of the shortest route from B to B is: #{graph.shortest_length('B', 'B')}"

puts "--> The number of different routes from C to C with a distance of less than 30 is: #{graph.find_by_distance_less_than('C', 'C', 30)}"
