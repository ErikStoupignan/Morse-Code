# Challenge 1
def decode_char(character)
  case character
  when '.-'
    'A'
  when '-...'
    'B'
  when '-.-.'
    'C'
  when '-..'
    'D'
  when '.'
    'E'
  when '..-.'
    'F'
  else vocabulary_part1(character)
  end
end

def vocabulary_part1(character)
  case character
  when '--.'
    'G'
  when '....'
    'H'
  when '..'
    'I'
  when '.---'
    'J'
  when '-.-'
    'K'
  else vocabulary_part2(character)
  end
end

def vocabulary_part2(character)
  case character
  when '.-..'
    'L'
  when '--'
    'M'
  when '-.'
    'N'
  when '---'
    'O'
  when '.--.'
    'P'
  else vocabulary_part3(character)
  end
end

def vocabulary_part3(character)
  case character
  when '--.-'
    'Q'
  when '.-.'
    'R'
  when '...'
    'S'
  when '-'
    'T'
  when '..-'
    'U'
  else vocabulary_part4(character)
  end
end

def vocabulary_part4(character)
  case character
  when '...-'
    'V'
  when '.--'
    'W'
  when '-..-'
    'X'
  when '-.--'
    'Y'
  when '--..'
    'Z'
  else 'No found it'
  end
end

# Challenge 2
def decode_word(word)
  y = ''
  x = word.split(/ /)
  x.each { |i| y += decode_char(i) }
  y
end

# Challenge 3
def decode_sentence(sentence)
  y = ''
  x = sentence.split(/   /)
  x.each { |i| y += "#{decode_word(i)} " }
  y.strip
end

# Examples to test the code
# decode_sentence "-- .- -- .-"
# decode_sentence "-- -.--   -. .- -- ."
# decode_sentence ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
