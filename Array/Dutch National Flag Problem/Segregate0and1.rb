#Given an array of 0s and 1s in random order.Segregate 0s on left side and 1s on right side of the array.
##Brute-force: Count 0s and rewrite array first with counted zeros then by 1
#Time-complexity:O(n),Auxiliary-space:O(1)


##Algorithm: Dutch National Flag Algorithm
#Time-complexity:O(n),Auxiliary-space:O(1)

def solve(a)
    left=0
    right=a.length-1
    while left<right
        #Increment left index while we see 0 at left
        while a[left]== 0
            left+=1
        end
        #Decrement right index while we see 1 at right
        while a[right]==1
            right-=1
        end
        #Exchange arr[left] and arr[right]
        if left<right
            a[left],a[right]=a[right],a[left]
            left+=1
            right-=1
        end
    end
    return a
end

puts "#{solve([1,0,1,1,0,0])}"
puts "#{solve([1,0,1,1,0,0,1,1,1,0,0,1,0,1])}"