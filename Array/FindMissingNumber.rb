# Problem:
=begin
Given an array of size N ,taht has elements in range 1 to N ,all elements in the arrayb are unique, 
Find the missing number.
e.g.
array = [1,5,2,4,6]
answer = 3
=end

#Approach 1 - Find the sum of all elements of array and substract it from sum of the range , the difference will be missing number.
# Time-complexity = O(n)
#Caveats: If the numbers are very large the sum can lead to integer overflow.
def method1(a)
    sum = 0
    for i in a
        sum += i
    end
    real_sum = 0
    for i in 1..a.length + 1
        real_sum += i
    end
    return real_sum - sum
end

#Ruby magic
#One line code but it uses O(n) auxiliary-space, it returns an array containing only the missing_element
# Array1-Array2 in ruby returns an array containing all the elements that are in Array1 but not in Array2

def method2(a)
    n = a.length+1
    range = Array (1..n)
    missing_element = range-a
    return missing_element
end


puts "Method 1: "
puts "#{method1([1,5,2,4,6])}"

puts "Method 2: "
puts "#{method2([1,5,2,4,6])}"