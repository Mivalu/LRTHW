filename = ARGV.first #takes name from original input
script = $0

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)" #closes the file
puts "IF you don't want that, hit RETURN."

print "? "
STDIN.gets 

puts "Opening the file..."
target = File.open(filename, 'w') #opens the file named in ARGV 
									#and makes it writeable

puts "Truncating the file. Goodbye!"
target.truncate(target.size) #empties the file (erases the contents)

puts "Now I'm going to ask you for three lines."

#the following takes user input and attaches to variables
print "line 1:"; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "Line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

#target.write(line1)
#target.write("\n")
#target.write(line2)
#target.write("\n")
#target.write(line3)
#target.write("\n")

#the variables are combined and written to the file.
target.write("#{line1}\n#{line2}\n#{line3}\n")

puts "And finally, we close it."
target.close() #closes the file and saves