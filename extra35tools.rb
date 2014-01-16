module Extra35tools

def text_prompt()
	print "> "
	next_move = gets.chomp
	next_move = next_move.upcase
end


def check_num_val(prompt)
	prompt = prompt.split('').all? { |c| c=~ /[[:digit:]]/ } ? prompt.to_i : 0
end


def immediate_cat_death()
	puts "CAT YAWNS. YOU ARE TRANSPORTED TO THE BEGINNING."
	start_room()
end

def win()
	puts "CATS HEAD HINGES BACKWARD LIKE A PEZ DISPENSER AND CONFETTI SHOOTS OUT"
	puts "TOOT TOOT TOOT MOTHERFUCKER YOU WIN."
	puts "TOOT TOOT TOOT."
	Process.exit(0)
end

def random_ten())
	random_number = 1 + rand(10)
end
