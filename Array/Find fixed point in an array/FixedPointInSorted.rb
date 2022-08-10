=begin
Given an array of n distinct integers sorted in ascending order, find a fixed point in the array.
Fixed Point in an array is an index i such that arr[i] is equal to i, i.e. a[i]==i
Time-complexity: O(logn)
Space-complexity: O(1)
Algorithm: Binary Search
=end

def binary_search_fixed_point(a)
    l = 0
    r = a.length() -1
    while(l<r)
        m = (l+r)/2
        if(a[m]==m)
            return m
        elsif(a[m] < m)
            l = m+1
        else
            r = m
        end
    end
    if(a[l]==l)
        return l
    else
        return -1
    end
end

def inputArray()
    puts "Input n: "
    n= gets.chomp.to_i
    a = []
    while(n>0)
        a.push(gets.chomp.to_i)
        n-=1
    end
    return a
end

a = inputArray()
puts "Fixed Point is: " 
puts binary_search_fixed_point(a)

