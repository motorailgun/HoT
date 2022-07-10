print "Who are you? \n> "
name = gets.chomp
puts "Hello, #{name}!"

puts "Tossing a coin..."

results = (0..2).to_a.reduce([0, 0]){|result, count|
	is_head = Kernel::rand(0..1) == 0
	puts "Round #{count + 1}: #{is_head ? 'Heads' : 'Tails'}"
	
	result[is_head ? 0 : 1] += 1
	result
}

puts "Heads: #{results[0]}, Tails: #{results[1]}"

puts "#{name} #{results[0] > results[1] ? 'won!' : 'lost.'}"

