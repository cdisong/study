# Anagrams are two words with exactly the same letters. Order does not matter. Define a method that, given two strings, returns a boolean indicating whether they are anagrams.
def anagrams?(str1, str2)
    i = 0 
    while i < str1.length 
      j = 0 
      while j < str2.length 
        if str1[i] == str2[j]
          str1[i] = "7"
        end 
        j += 1 
      end 
      i += 1 
    end 
    str1 = str1.chars.reject{|str| str == "7"} 
    return false if str1.length != 0
    return true 
  end
  
  # An isogram is a word of only non-repeating letters. Define a method that, given two isograms of the same length, returns an array of two elements indicating matches: the first number is the number of letters matched in both words at the same position, and the second is the number of letters matched in both words but not in the same position.
  def isogram_matcher(isogram1, isogram2)
    result = [0,0]
    i = 0 
    while i < isogram1.length 
      j = 0 
      while j < isogram2.length 
        if j == i && isogram1[i] == isogram2[j]
          result[0] += 1 
        elsif j != i && isogram1[i] == isogram2[j] 
          result[1] += 1 
        end 
        j += 1 
      end 
      i += 1 
    end 
    return result 
  end
  
  # You have a panoramic view in front of you, but you only can take a picture of two landmarks at a time (your camera is small). You want to capture every pair of landmarks that are next to each other. Define a method that, given an array of landmarks, returns an array of every adjacent pair from left to right. Assume the panorama wraps around.
  def panoramic_pairs(landmarks)
    result = [] 
    i = 0 
    j = i + 1 
    while j <= landmarks.length 
      if j == landmarks.length 
        result << [landmarks[i], landmarks[0]]
      else 
        result << [landmarks[i],landmarks[j]]
      end 
      i += 1 
      j += 1 
    end 
    return result 
  end
  
  # Xbonacci
  
  # Define a Xbonacci method that works similarly to the fibonacci sequence.
  # The fibonacci sequence takes the previous two numbers in the sequence and adds
  # them together to create the next number.
  #
  # First five fibonacci numbers = [1, 1, 2, 3, 5]
  # The fourth fibonacci number (3) is the sum of the two numbers before it
  # (1 and 2).
  #
  # In Xbonacci, the sum of the previous X numbers (instead of the previous 2 numbers)
  # of the sequence becomes the next number in the sequence.
  #
  # The method will take two arguments: the starting sequence with X number of
  # elements and an integer N. The method will return the first N elements in the given
  # sequence.
  #
  # xbonacci([1, 1], 5) => [1, 1, 2, 3, 5]
  # xbonacci([1, 1, 1, 1], 8) => [1, 1, 1, 1, 4, 7, 13, 25]
  #
  # X is the length of the starting sequence.
  #
  # number_of_xbonacci_numbers_to_return is the same as N.
  
  def xbonacci(starting_sequence, number_of_xbonacci_numbers_to_return)
    i = starting_sequence.length  
    j = starting_sequence.length 
    while j < number_of_xbonacci_numbers_to_return 
        starting_sequence.push(starting_sequence[-i..-1].reduce(:+))
        j += 1 
    end 
  return starting_sequence
  end
  
  require_relative "test.rb"

  # Long Word Count

# Return the number of words longer than 7 characters
# "cat cactus balderdash phenomenon amazon" has two words over 7 characters long
# "balderdash" and "phenomenon"
# long_word_count("cat cactus balderdash phenomenon amazon") => 2

def long_word_count(text)
    result = 0 
    text.split(" ").each do |word|  
      result += 1 if word.length > 7 
    end 
    return result
  end
  
  puts "-------Long Word Count-------"
  puts long_word_count("") == 0
  puts long_word_count("short words only") == 0
  puts long_word_count("one reallylong word") == 1
  puts long_word_count("two reallylong words inthisstring") == 2
  
  # ------------------------------------------------------------------------------
  
  # Calculate
  
  # Define a method, #calculate, that accepts two arguments: a starting value and an
  # array of commands. The method should preform the specified commands and return the
  # final value. An example of commands might look like:
  
  # [["+", 3], ["/",4 ], ['-', 10], ["*", 6]]
  
  # Note that this is an array of arrays, where the first element is the operation to perform,
  # and the second argument is the value to use in the operation. You only need to account
  # for the 4 basic operations: +, -, *, and /
  
  # ex: calculate(3, [["*", 5]]) ==> 3 * 5 == 15
  # ex: calculate(2, [["+", 2], ["/",4 ]]) ==> (2 + 2) / 4 == 1
  
  def calculate(starting_value, operations)
    i = 0 
    nums = []   
    ops = []
  
    while i < operations.length 
      nums << operations[i][1] 
      ops << operations[i][0]
      i += 1 
    end 
    save = starting_value
    ops.each.with_index do |op, idx|
      operation = nil
      if op == "*"
        operation = :* 
      elsif op == "/"
        operation = :/
      elsif op == "+"
        operation = :+ 
      else 
        operation = :-
      end 
      save = [nums[idx]].reduce(save, operation)
    end 
    return save
  end
  
  puts "-------Calculate-------"
  puts calculate(3, [["*", 5]]) == 15
  puts calculate(2, [["+", 2], ["/",4 ]]) == 1
  puts calculate(0, [["+", 3], ["/", 3], ['-', 10], ["*", 6]]) == -54
  puts calculate(10, [["+", 1], ["+", 10], ['-', 3], ["/", 2]]) == 9
  
  # ------------------------------------------------------------------------------
  
  # Hashtagify
  
  # Given a sentence string and an array of words, hashtag-ify the words (case-insensitive)
  # in the original string and return the updated cool string with hashtags.
  
  def hashtagify(sentence, tags)
    #
    # your code goes here
    #
  end
  
  puts "-------Hashtagify-------"
  puts hashtagify("coding", ["coding"]) == "#coding"
  puts hashtagify("coding is fun", ["coding", "fun"]) == "#coding is #fun"
  puts hashtagify("Coding is fun!", ["coding", "fun"]) == "#Coding is #fun!"
  puts hashtagify("Learned about coding.", ["coding"]) == "Learned about #coding." 
  
  # ------------------------------------------------------------------------------
  
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
    #
    # your code goes here
    #
  end
  
  puts "----Vigenere cipher----"
  puts vigenere_cipher("toerrishuman", [1]) == "upfssjtivnbo"
  puts vigenere_cipher("toerrishuman", [1, 2]) == "uqftsktjvobp"
  puts vigenere_cipher("toarrispirate", [1, 2, 3, 4]) == "uqdvskvtjtdxf"
  puts vigenere_cipher("zzz", [1, 2, 1]) === "aba"