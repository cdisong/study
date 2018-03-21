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
  
  # Transpose
# You are given a n * n 2D matrix
# Example:
# Matrix = [[1, 2],
#           [3, 4]]
# Write a method that will transpose a matrix. The transpose of a matrix is
# obtained by turning all of the columns of a matrix into the rows and vice versa.
# So an element at index ij would be at index ji once tranposed.
# For example:
# transpose(Matrix) = [[1, 3],
#                      [2, 4]]
#
# You may assume a square matrix as input. Do not use `.transpose`

def transpose(matrix)
  x = matrix.length 

  y = matrix[0].length

  result = Array.new(x) { Array.new(y) }

  matrix.each_with_index do |row, idx|

    row.each_with_index do |el, idx2|

      result[idx2][idx] = el     
      # p result 
    end
  end
  result
end
      
f
# puts "-------Transpose-------"
# matrix_one = [[1, 2],
#             [3, 4]]
            
# matrix_two = [[1, 4, 7],
#             [2, 5, 8],
#             [3, 6, 9]]
            
# matrix_three = [[1, 2, 3, 4],
#               [5, 6, 7, 8],
#               [9, 10, 11, 12],
#               [13, 14, 15, 16]]
              
# puts transpose(matrix_one) == [[1, 3],
#                              [2, 4]]
                             
# puts transpose(matrix_two) == [[1, 2, 3],
#                              [4, 5, 6],
#                              [7, 8, 9]]
                             
# puts transpose(matrix_three) == [[1, 5, 9, 13],
#                                [2, 6, 10, 14],
#                                [3, 7, 11, 15],
#                                [4, 8, 12, 16]]
  
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