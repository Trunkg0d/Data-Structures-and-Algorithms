=begin
Given an array, find a fixed point in the array.
Fixed Point in an array is an index i such that arr[i] is equal to i, i.e. a[i]==i
Time-complexity: O(n)
Space-complexity: O(1)
Algorithm: Linear Search
=end

def linear_search(a)
    for i in 0...a.length
        if(a[i]==i)
            return a[i]
        end
    end
    return -1
end

puts "Linear Search: "
puts "#{linear_search([1,0,2,4,3,7,8,7,6])}"

