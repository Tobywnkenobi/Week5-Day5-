# How to solve a problem:

#     -Figure out wher the input and its type are
#     -Set up a function
#     -Figure out what the output and its type are
#     -Gather your Knowledge
#     -Gathers your constraints (Not Always Necessary)
#     -Determine a Logical way to solve the problem
#      -Write each step out in English
#       -Write each step out in Python-esse (sudo-code)
#       -Invoke and Test your function

# examples
# high_and_low("1 2 3 4 5")  # return "5 1"
# high_and_low("1 2 -3 4 5") # return "5 -3"
# high_and_low("1 9 3 4 -5") # return "9 -5"        
'''
All numbers are valid , no need to validate them.
There will always be at least one number in the input string.
Output string must be two numbers separated by a single space, and highest number is first.

convert string to integers and sort
'''                                                                               
def high_low(numbers):
    nums = sorted([int(i) for i in numbers.split()])    #sort function based on spaces, makes int then sort asc
    return "{} {}".format(nums[-1], nums[0])    #returns the highest (last) and (lowest)first as a string

print(high_low("1 2 3 4 5"))    
print(high_low("1 2 -3 4 5"))   
print(high_low("1 9 3 4 -5")) 
'''
Time complexity: for lines 25: O(n) - based on input length / list comprehension is O(n) / sorted (n). the return is O(1) constant based on the function. constant time.
                 overall: O(n) 
'''
