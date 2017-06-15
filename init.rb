require_relative 'sequence.rb'

puts "enter the member of sequence:"
first_member = gets

puts "enter the number of steps:"
steps = gets

puts

sequence = Sequence.new(first_member, steps).start
puts sequence
