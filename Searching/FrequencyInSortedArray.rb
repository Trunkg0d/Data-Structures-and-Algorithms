#Given a sorted array arr[] and a number x, write a function that counts the occurrences of x in arr[]
#Algorithm: Binary Search
#Time-complexity:O(logn),Auxiliary space:O(1)

def right_binary(a,x)
    l=0
    r=a.length 
    while(l<r)
        m=(l+r)/2
        if(a[m]>x)
            r=m
        else
            l=m+1
        end
    end
    if(a[r-1]==x)
        return r-1
    else
        return -1
    end
end

def left_binary(a,x)
    l=0
    r=a.length 
    while(l<r)
        m=(l+r)/2
        if(a[m]<x)
            l=m+1
        else
            r=m
        end
    end
    if(a[l]==x)
        return l
    else
        return -1
    end
end

def solve(a,x)
    puts "Left Binary: #{left_binary(a,x)}"
    puts "Right Binary: #{right_binary(a,x)}"
    puts "Frequency: "
    if(left_binary(a,x)!= -1 && right_binary(a,x)!= -1)
        return right_binary(a,x) - left_binary(a,x) +1
    elsif(left_binary(a,x) == -1 && right_binary(a,x)!=-1)
        return 1
    elsif(left_binary(a,x) != -1 && right_binary(a,x)==-1)
        return 1
    else
        return -1
    end
end

puts solve([1,1,2,2,2,2,3,3,4,5,6,7],1)
puts solve([1,1,2,2,2,2,3,3,4,5,6,7],7)
puts solve([1,1,2,2,2,2,3,3,4,4,5,6,7],8)
puts solve([1,1,2,2,2,2,3,3,4,5,6,7],6)
puts solve([1,1,2,2,2,2,3,3,4,5,6,7,7,7,7],7)