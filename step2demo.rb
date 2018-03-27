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
   
   
   
   