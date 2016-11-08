
# Complete the method called find_longest_word, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.

def coolest_find_longest_word(sentence)
  @find_longest_word = sentence.split(" ").max_by(&:length)
end

def find_longest_word(input)
  words = input.split(" ")
  longest_word = "'"
  words.each do |word|
    if longest_word.length < word.length
      longest_word = word
    end
  end
  @find_longest_word = longest_word
end

# Driver code - don't touch anything below this line.
puts "TESTING find_longest_word..."
puts

result = find_longest_word("What is the longest word in this phrase?")

puts "Your method returned:"
puts result
puts

if result == "longest"
  puts "PASS!"
else
  puts "F"
end