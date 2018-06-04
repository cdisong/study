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
  
  end
  
  require_relative "test.rb"