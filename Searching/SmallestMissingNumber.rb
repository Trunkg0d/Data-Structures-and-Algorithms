# Given a sorted array of n unique integers where each integer is in the range from 0 to m-1 and m > n.
# Find the smallest number that is missing from the array.

#Algorithm: Binary Search (Compare elements with indexes and then decide)
#Time-complexity: O(logn), Auxiliary-space: O(1)
def binary_search(a,x)
    l =0
    r = a.length - 1
    while(l<r)
        m = (l+r)/2
        if(a[m]<x)
            l = m+1
        else
            r = m
        end
    end
    if(a[l] == x)
        return l
    else
        return -1
    end
end

def SmallestMissingNumber(a)
    for i in 0...a.length + 1
        if(binary_search(a,i) != -1)
            next
        else
            return i
        end
    end
    return "No"
end

def inputArray()
    a = []
    puts "Input n: "
    n = gets.chomp.to_i
    while(n>0)
        a.push(gets.chomp.to_i)
        n-=1
    end
    return a
end

a = inputArray()
puts "The missing number is: "
puts SmallestMissingNumber(a)
