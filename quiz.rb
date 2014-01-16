# .___________. __    __   __       _______.    __       _______.        ___           ______      __    __   __   ________
# |           ||  |  |  | |  |     /       |   |  |     /       |       /   \         /  __  \    |  |  |  | |  | |       /
# `---|  |----`|  |__|  | |  |    |   (----`   |  |    |   (----`      /  ^  \       |  |  |  |   |  |  |  | |  | `---/  /
#     |  |     |   __   | |  |     \   \       |  |     \   \         /  /_\  \      |  |  |  |   |  |  |  | |  |    /  /
#     |  |     |  |  |  | |  | .----)   |      |  | .----)   |       /  _____  \     |  `--'  '--.|  `--'  | |  |   /  /----.__
#     |__|     |__|  |__| |__| |_______/       |__| |_______/       /__/     \__\     \_____\_____\\______/  |__|  /________(__)

# Question 1: a method called sleep_in?
#############
# Write a method called sleep_in?
# You can sleep in if it is not a weekday or if you are on vacation.
# sleep_in? => false
# sleep_in?(vacation: true) => true
def sleep_in? (options = {})
	if Time.now.wday ==0 || Time.now.wday == 6
		return true
	elsif options[:vacation] == true 
		return true
	else return false
	end
end

# Question 2: a method called del_del
#############
# Remove "del" from a string.
# del_del("abdelcd") => "abcd"
# del_del("xyz") => "xyz"
def del_del(str)
	str.sub('del', '')
end

# Question 3: a method called missing_char
#############
# Remove the character that corresponds to the index from the string.
# If you don't enter a string
# missing_char("kitten", 1) => "ktten"
# missing_char(347, 1) => RuntimeError: Please enter a string!
def missing_char(str, index)
	if str.class == String
		str.sub!(str[1], '')
	else raise "Please enter a string!"
	end
end
# Question 4: a method called near_hundred?
#############
# Write a method called near_hundred?
# If the number is between 90 and 99, the result is true;
# If it is 89 or below, it is false.
# near_hundred? => true
# near_hundred?(52) => false
# near_hundred?('two') => RuntimeError: Please enter a number!
def near_hundred?(num)
	if num > 89 && num < 111 
		return true
	elsif num.clas == Fixnum
		return false
	else raise 'Please enter a number!'
	end
end

def back_around(str)
	str.slice[str.length]
end
# Question 5: a method called back_around
#############
# Given a string, move the last character to the beginning.
# "cat".back_around => "tca"
# "hello".back_around => "ohell"
