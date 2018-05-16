def sum_to(n)
    return 1 if n == 1 
    n + sum_to(n - 1)
end 



def add_numbers(nums_array)
    return nil if nums_array.length == 0 
    return nums_array[0] if nums_array.length == 1 
    nums_array[nums_array.length - 1] + add_numbers(nums_array[0..nums_array.length - 2])
end 


