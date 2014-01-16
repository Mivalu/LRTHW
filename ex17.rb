from_file, to_file = ARGV
script = $0

puts "Copying from #{from_file} to #{to_file}"
input= File.open(from_file); indata = input.read()
puts "Does the output file exist? #{File.exists? to_file}"
output = File.open(to_file, 'w'); output.write(indata)

puts "Alright, all done."

output.close()
input.close()

#Does this work???
#File.open(to_file, 'w').write(File.open(from_file).read())