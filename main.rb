# Challenge 1 
def decode_char(character)
	case character
	when character = ".-"
		"A"
	when character = "-..."
		"B"
	when character = "-.-."
		"C"
	when character = "-.."
		"D"
	when character = "."
		"E"
	when character = "..-."
		"F"
	when character = "--."
		"G"
	when character = "...."
		"H"
	when character = ".."
		"I"
	when character = ".---"
		"J"
	when character = "-.-"
		"K"
	when character = ".-.."
		"L"
	when character = "--"
		"M"
	when character = "-."
		"N"
	when character = "---"
		"O"
	when character = ".--."
		"P"
	when character = "--.-"
		"Q"
	when character = ".-."
		"R"
	when character = "..."
		"S"
	when character = "-"
		"T"
	when character = "..-"
		"U"
	when character = "...-"
		"V"
	when character = ".--"
		"W"
	when character = "-..-"
		"X"
	when character = "-.--"
		"Y"
	when character = "--.."
		"Z"
	else
		"Not found it"
	end
end


# Challenge 2 
def decode_word(word)
	y = ""
	x = word.split(/ /)
	x.each {|i| y += decode_char(i) }
	y
end


# Challenge 3 
def decode_sentence(sentence)
	y = ""
	x = sentence.split(/   /)
	x.each {|i| y += "#{decode_word(i)} " }
	y.strip
end
