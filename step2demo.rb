def hipsterfy(sentence)
    words = sentence.split
     words.each_index {|i| words[i] = delete_vowel(words[i])}
     return words.join(" ")
   end
   
   def delete_vowel(word)
     word = word.reverse 
    result = ""
     deleted = false
     vowels = "aeiou"
     i = 0 
     while i < word.length 
       if vowels.include?(word[i]) && !deleted 
         deleted = true 
       else 
         result << word[i]
       end 
       i += 1 
     end 
     result.reverse
   end
   
   puts "-------Hipsterfy-------"
   puts hipsterfy("proper") == "propr"
   puts hipsterfy("mstrkrft") == "mstrkrft"
   puts hipsterfy("towel flicker banana") == "towl flickr banan"
   puts hipsterfy("turtle cheeseburger fries") == "turtl cheeseburgr fris"
   
   
   
# Even Splitters

# Return an array of characters on which we can split an input string to produce
# substrings of the same length.

# Don't count empty strings after the split.

# Here's an example for "banana":

# "banana".split("a") # => ["b", "n", "n"] (all elements same length)
# "banana".split("b") # => ["", anana"] (all elements same length - there's only
# one element "anana" because the empty string doesn't count)
# "banana".split("n") # => ["ba", "a", "a"] (all elements NOT same length)

# result: ["b", "a"]

def even_splitters(string)
  uniq_letters = string.chars.uniq
  result = []

  uniq_letters.each do |letter|
    result << letter if even_split?(letter,string)
  end

  result
end

def even_split?(letter, string)
  sub_array = string.split(letter)
  sub_array2 = []

  sub_array.each do |el|
    sub_array2 << el if el.length > 0
  end
  
  sub_array2.each do |el|
    return false if el.length != sub_array2[0].length
  end

  true
end


# puts "-----Even Splitters----"
puts even_splitters("") == []
puts even_splitters("t") == ["t"]
puts even_splitters("jk") == ["j", "k"]
puts even_splitters("xoxo") == ["x", "o"]
puts even_splitters("banana") == ["b","a"]
puts even_splitters("mishmash") == ["m","h"]   

# Long Word Count

# Return the number of words longer than 7 characters
# "cat cactus balderdash phenomenon amazon" has two words over 7 characters long
# "balderdash" and "phenomenon"
# long_word_count("cat cactus balderdash phenomenon amazon") => 2

def long_word_count(text)
  #
  # your code goes here
  #
end

puts "-------Long Word Count-------"
puts long_word_count("") == 0
puts long_word_count("short words only") == 0
puts long_word_count("one reallylong word") == 1
puts long_word_count("two reallylong words inthisstring") == 2

### Missing Numbers
#
# Given an array of unique integers ordered from least to greatest, write
# a method that returns an array of the integers that are needed to
# fill in the consecutive set.

def missing_numbers(nums)

end

puts "-------Missing Numbers-------"
puts missing_numbers([1, 3]) == [2]
puts missing_numbers([2, 3, 7]) == [4, 5, 6]
puts missing_numbers([-5, -1, 0, 3]) == [-4, -3, -2, 1, 2]
puts missing_numbers([0, 5]) == [1, 2, 3, 4]