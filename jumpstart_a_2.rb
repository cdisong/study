### Missing Numbers
#
# Given an array of unique integers ordered from least to greatest, write
# a method that returns an array of the integers that are needed to
# fill in the consecutive set.

def missing_numbers(arr) 
    least = arr[0]
    greatest = arr[-1]
    result = (least..greatest).reject {|num| arr.include?(num)} 
  end 
  
  puts "-------Missing Numbers-------"
  puts missing_numbers([1, 3]) == [2]
  puts missing_numbers([2, 3, 7]) == [4, 5, 6]
  puts missing_numbers([-5, -1, 0, 3]) == [-4, -3, -2, 1, 2]
  puts missing_numbers([0, 5]) == [1, 2, 3, 4]
  
  
  
  ### Titleize
  #
  # Write a method that capitalizes each word in a string like a book title.
  # Do not capitalize words like 'a', 'and', 'of', 'over' or 'the'.
  
  
  
  puts "-------Titleize-------"
  puts titleize("basketball") == "Basketball"
  puts titleize("stephen curry") == "Stephen Curry"
  puts titleize("war and peace") == "War and Peace"
  puts titleize("the bridge over the river kwai") == "The Bridge over the River Kwai"
  
  
  
  # Unique in Order
  #
  # Implement the function unique_in_order which takes a string and
  # returns an array of letters without any elements with the same value next
  # to each other. Preserve the original order of elements.
  
  
  
  puts "-------Unique in Order-------"
  puts unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
  puts unique_in_order('BBBAAAACCDAABBB') == ['B', 'A', 'C', 'D', 'A', 'B']
  puts unique_in_order('ABBCcAD') == ['A', 'B', 'C', 'c', 'A', 'D']
  puts unique_in_order('aAa') == ['a', 'A', 'a']
  
  
  
  # Substrings
  #
  # Return an array of all the substrings for a given string.
  # Be sure that the returned array is sorted.
  
  def substrings(string)
    result = [] 
    i = 0 
    while i < string.length  
      j = i  
      while j < string.length  
        result << string[i..j] 
       
        j += 1 
      end 
      i += 1 
    end 
    result.sort 
  end
  
  puts "-------Substrings-------"
  puts substrings("") == []
  puts substrings("123") == ["1", "12", "123", "2", "23", "3"]
  puts substrings("ruby") == ["b", "by", "r", "ru", "rub", "ruby", "u", "ub", "uby", "y"]