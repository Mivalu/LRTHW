#i = 0
#numbers = []
#
#while i < 6
#	puts "At the top i is #{i}"
#	numbers.push(i)
#
#	i = i + 1
#	puts "Number now: #{numbers}"
#	puts "At the bottom, i is #{i}"
#end
#
#puts "The numbers: "
#
#for num in numbers
#	puts num
#end

def counting_stuff(balls, counter)
	i = 1
	numbers = []

	while i <= balls
		numbers.push(i)

		i += counter
		puts "i is now #{i}"
		puts "Number now: #{numbers}"
	end

	puts "The numbers: "

	for num in numbers
		puts num
	end
end

prompt = "> "
puts "How many cats do you have?"
puts prompt
cats = gets.chomp
cats = cats.to_i
puts "How do you want to count by?"
puts prompt
count_by = gets.chomp
count_by = count_by.to_i
puts "Get ready for counting...."
counting_stuff(cats, count_by)