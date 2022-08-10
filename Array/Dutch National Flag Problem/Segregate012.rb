#Given an array A[] consisting 0s, 1s and 2s, put all 0s first, then all 1s and all 2s in last.
##Brute-force: Count 0s and 1s (using 2 varibales)and rewrite array first with counted zeros then by counted 1s and then by 2s
#Time-complexity:O(n),Auxiliary-space:O(1)


##Algorithm: Dutch National Flag Algorithm
#Time-complexity:O(n),Auxiliary-space:O(1)

def solve(a)
    l = 0
    r = a.length - 1
    m = 0
    while(m<=r)
        if(a[m]==0)
            a[m],a[l]=a[l],a[m]
            l+=1
            m+=1
        elsif(a[m]==2)
            a[r],a[m]=a[m],a[r]
            r-=1
        else
            m+=1
        end
    end
    return a 
end

puts "#{solve([0, 1, 1, 0, 1, 2, 1, 2, 0, 0, 0, 1])}"