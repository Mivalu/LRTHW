require_relative 'extra35tools'
include Extra35tools

module Extra35rooms

def start_room()
	puts "You are in a room. There is a cat lounging on a nearby chair."
	puts "CAT SAYS MIAO."
	puts "Do you take the LEFT room, CENTER room, or RIGHT room?"

	inventory_array = []

	if next_move == "LEFT"
		puts "You turn the doorknob and enter the room."
		left_room()
	elsif next_move == "CENTER"
		puts next_move
	elsif next_move == "RIGHT"
		puts next_move
	else 
		puts "CAT OPENS ITS JAWS AND ENVELOPS THE ENTIRE WORLD. \n YOU DIE."
	end
end

def left_room()
	puts "CAT FOLLOWS YOU INTO THE LEFT ROOM."
	puts "You see a bear wearing a fez, standing in front of a door."
	puts "Do you TAUNT BEAR or JUGGLE SCARVES?"

	next_move = text_prompt()

	if next_move == "TAUNT BEAR"
		puts "The bear believes you are a circus animal trainer, and runs, screaming."
		puts "Behind where the bear was, you see a slightly open door."
		puts "Do you OPEN DOOR or LEAVE?"
		
		second_move = text_prompt()

		if second_move == "OPEN DOOR"
			puts "You step through the door."
			gold_foil_room()
		elsif second_move == "LEAVE"
			puts "Fine, be that way."
			Process.exit(0)
		else 
			puts "What?"
			immediate_cat_death()
		end	

	elsif next_move == "JUGGLE SCARVES"
		puts "The bear sees you as a lowly circus clown, and mauls you."
		puts "You die."
		Process.exit(0)
	else
		immediate_cat_death()
	end
end

def gold_foil_room()
	puts "CAT PURRS AND RUBS AGAINST A WALL."
	puts "You realize that the room is entirely empty, but covered in gold from ceiling to floor."
	puts "You approach a wall and think it looks a little odd."
	puts "Do you INSPECT WALL or ROLL AROUND on the floor in glee?"

	next_move = text_prompt()

	if next_move == "INSPECT WALL"
		puts "You realize that the gold covering the walls is actually foil."
		puts "The room is made of chocolate! \nThis is what your life has been leading up to!"
		win()
	elsif next_move == "ROLL AROUND"
		puts "You roll around on the floor in glee."
		puts "Nothing happens."
		Process.exit(0)
	else
		puts "You think about the direction your life has taken."
		puts "CAT LEAVES YOU TO YOUR THOUGHTS."
	end
			
end

def center_room()
	puts "CAT WATCHES AS YOU WALK THROUGH TO THE NEXT ROOM."
	puts "You enter and are surrounded in darkness as the door slams"
	puts "and locks behind you."
	puts "Do you want to continue on?"
	

end

def after_center()


end

def last_center()
#ends in death

end

end