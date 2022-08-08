# Given an array where all elements appear even number of times except one. 
# All repeating occurrences of elements appear in pairs and these pairs are not adjacent (there cannot be more than two consecutive occurrences of any element). 
# Find the element that appears odd number of times.
# Note that input like {2, 2, 1, 2, 2, 1, 1} is valid as all repeating occurrences occur in pairs and these pairs are not adjacent.
# Input like {2, 1, 2} is invalid as repeating elements don’t appear in pairs. Also, input like {1, 2, 2, 2, 2} is invalid as two pairs of 2 are adjacent. 
# Input like {2, 2, 2, 1} is also invalid as there are three consecutive occurrences of 2.


#Time-complexity: O(logn),Auxiliary-space:O(1)
#Algorithm:Binary-search

def solve(a)
    l=0
    r = a.length - 1
    while(l<=r)
        m=(l+r)/2
        if(a[m]!=a[m-1] && a[m] != a[m+1])
            return a[m]
        end

        if(m%2==0)
            if(a[m]==a[m+1])
                l=m+1
            else
                r=m-1
            end
        end
        if(m%2!=0)
            if(a[m]==a[m-1])
                l=m+1
            else
                r=m-1
            end
        end
    end
    return a[m]
end

puts solve([3,1, 1, 2, 2, 3, 3, 4, 4,600, 600, 4, 4])
puts solve([1,2,2,3,3,4,4])
puts solve([1,1,2,2,3,3,4,5,5])