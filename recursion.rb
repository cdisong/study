require 'byebug'

def sum_to(n)
    return 1 if n == 1 
    n + sum_to(n - 1)
end 



def add_numbers(nums_array)
    return nil if nums_array.length == 0 
    return nums_array[0] if nums_array.length == 1 
    nums_array[nums_array.length - 1] + add_numbers(nums_array[0..nums_array.length - 2])
end 


def gamma_fnc(int)
    return nil if int < 0 
    return 1 if int == 1 
    (int - 1) * gamma_fnc(int - 1)
end 



def ice_cream_shop(array, str) 
    return true if array.last == str 
    return false if array.length < 1

    ice_cream_shop(array[0...array.length - 1], str) 
end 



def reverse(string)
    return "" if string.empty? 
    string[-1] + reverse(string[0...-1])
end


def exponentation(b, n)
    return 1 if n == 0 
    b * exponentation(b, n - 1)
end 


def exponentation2(b, n) 
    return 1 if n == 0 
    return b if n == 1 

    if n.even? 
        exponentation2(b, (n / 2)) * exponentation2(b, (n / 2))
    else 
        b * exponentation2(b, (n / 2)) * exponentation2(b, (n / 2))
    end 
end 



def deep_dup(array)
    return [] if array.empty?

    result = [] 
    array.each do |el| 
        result << el if !(el.is_a?(Array))
        result << deep_dup(el) if el.is_a?(Array) 
    end 
    return result 
end 
