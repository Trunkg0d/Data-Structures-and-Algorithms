#Given an array reverse it without using extra-space
#Time-complexity: O(n), Auxiliary-space: O(1)


#Method 1: Iterative
def reverse(a)
    l=0
    r=a.length - 1
    while(l<r)
        a[l],a[r] = a[r],a[l]
        l+=1
        r-=1
    end
    return a
end

puts "#{reverse([3,2,4,5,7,1,0])}"

#Method 2: Recursive

def reverse_recursive(a)
    if(a.length==0)
        return []
    end
    return [a[-1]] + reverse_recursive(a[0,a.length-1])
end

puts "#{reverse_recursive([3,2,4,5,7,1,0])}"