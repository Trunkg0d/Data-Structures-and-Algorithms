#Given an array of random numbers, Push all the zero’s of a given array to the end of the array
#Time Complexity: O(n),Auxiliary Space: O(1)

##Algorithm:
    #Traverse the given array from left to right andmaintain count of non-zero elements in array.
    # For every non-zero element arr[i], put the element at ‘arr[count]’ and increment ‘count’. 
    # After complete traversal, all non-zero elements have already been shifted to front end and ‘count’ is set as index of first 0. 
    # Now run a loop which makes all elements zero from ‘count’ till end of the array zero.

def solve(a)
    count = 0
    for i in 0...a.length
        if(a[i]!=0)
            a[count] = a[i]
            count += 1
        end
    end
    while(count < a.length)
        a[count] = 0
        count +=1
    end
    return a
end

puts "#{solve([1,2,0,3,0,4,0,5,0,0,6])}"