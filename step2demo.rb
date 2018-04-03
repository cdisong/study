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

# Reverse Digits

# Define a method, #reverse_digits(int), that reverses the digits of its 
# argument and returns the resulting number.
def reverse_digits(int) # 1
  int.to_s.reverse.to_i 
end

puts "-------Reverse Digits-------"
puts reverse_digits(1) == 1
puts reverse_digits(123) == 321
puts reverse_digits(1005) == 5001
puts reverse_digits(12345678) == 87654321

# ------------------------------------------------------------------------------

# Thirds Product

# Define a method, #thirds_product(array), that accepts an array of integers 
# as an argument. Your method should return the product of every third 
# element multiplied together. It should return 1 if there is no third 
# element.

# ex: thirds_product([0, 1, 2, 3, 4, 5, 6, 7, 8]) ==> 2 * 5 * 8 == 80

def thirds_product(array)
  product = 1
  i = 2
  while i < array.length
    product *= array[i]
    i += 3
  end
  product
end

puts "-------Thirds Product-------"
puts thirds_product([1, 2]) == 1
puts thirds_product([1, 2, 0]) == 0
puts thirds_product([0, 1, 2, 3, 4, 5]) == 10
puts thirds_product([1, 2, 5, 3, 4, 2, 6, 4, 2]) == 20

# ------------------------------------------------------------------------------

# How Many Likes?

# Define a method, #how_many_likes?(sentence) that accepts a string as an 
# argument. Your method should count the number of times the sentence uses 
# the word "like".

def how_many_likes?(sentence)
  count = 0
  words = sentence.split(" ")
  
  words.each do |word|
    count += 1 if word == "like"
  end
  
  count 
end

puts "-------How Many Likes?-------"
puts how_many_likes?("this sentence is just fine") == 0
puts how_many_likes?("i really like ruby") == 1
puts how_many_likes?("i like really like how ruby works") == 2
puts how_many_likes?("this is like totally like too many like words") == 3

# ------------------------------------------------------------------------------

# Pair Product?

# Define a boolean method, #pair_product?, that accepts two arguments: an 
# array of integers and a target_product (an integer). The method returns a 
# boolean indicating whether any pair of elements in the array multiplied 
# together equals that product. You cannot multiply an element by itself. 
# An element on its own is not a product.

def pair_product?(arr, target_product)
  
  i = 0
  while i < arr.length - 1
    j = i + 1
    while j < arr.length
      if arr[i] * arr[j] == target_product
        return true 
      end
      j += 1
    end 
    i += 1
  end
  
  false
  
  arr.combination(2).any? {|a,b| a*b == target_product}
  # !!combo.detect {|a,b| a*b == target_product}
end

puts "-------Pair Product?-------"

puts pair_product?([5, 3, 4, 2], 6) == true
puts pair_product?([5, 3, 5], 10) == false
puts pair_product?([6, 1, 7, 8], 1) == false
puts pair_product?([2, 8, 6, 2], 4) == true

# Vigenere Cipher

# Vigenere's Cipher is a tool for encrypting strings. We'll offset each character
# according to a key sequence. For example, if we encrypt "bananasinpajamas" with the
# key sequence [1, 2, 3], the result would be "ccqbpdtkqqcmbodt":
#
# Word:   b a n a n a s i n p a j a m a s
# Keys:   1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1
# Cipher: c c q b p d t k q q c m b o d t
#
# Note that offsets should wrap around the alphabet - offsetting 'z' by 1 should
# produce 'a'. It could wrap the around the alphabet n number of times; 
# for example, 100 times.
#
# Write a method that takes a string and a key-sequence, returning
# the encrypted word. Assume only lower-case letters are used.

# We're giving you the alphabet as an array, don't modify it!
# ------------------------------------------------------------------------------

def vigenere_cipher(string, key_sequence)
  alphabet = ("a".."z").to_a
  # so first things first, it looks like i'm gonna need to iterate over the string 
  # probably will also have to find a way to continuously iterate over the key_sequence until i'm done iterating over string 
  # HMMM HOW WILL I DO THAT? 
  # 
  # your code goes here
  #
end

puts "----Vigenere cipher----"
puts vigenere_cipher("toerrishuman", [1]) == "upfssjtivnbo"
puts vigenere_cipher("toerrishuman", [1, 2]) == "uqftsktjvobp"
puts vigenere_cipher("toarrispirate", [1, 2, 3, 4]) == "uqdvskvtjtdxf"
puts vigenere_cipher("zzz", [1, 2, 1]) === "aba"


# Compound Words

# Define a method, #compound_words?(word_list, target), that accepts 2 arguments:
# an array of words and a target, compound word. Check to see if any two words
# in the list can be combined to make the compound word. Don't double-use words.

def compound_words?(array, target)
  i = 0 
  while i < array.length - 1 
    j = 0 
    while j < array.length 
      if array[i] + array[j] == target && i != j 
        return true 
      end 
      j += 1 
    end
    i += 1 
  end 
  return false 
end

puts "------Compound Words------"
puts compound_words?(["ice", "cream"], "icecream") == true
puts compound_words?(["cake", "candle", "cup", "wish"], "cupcake") == true
puts compound_words?(["hello", "bye", "greetings"], "byebye") == false
puts compound_words?(["bye", "bye", "greetings"], "byebye") == true
