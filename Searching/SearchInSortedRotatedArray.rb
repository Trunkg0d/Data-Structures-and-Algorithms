# A sorted array is rotated at some unknown point, Search given element in it
# Time-complexity: O(logn),Auxiliary-space:O(1)

# Algorithm: Binary-Search

def search_rotated_array(a,x)
    l=0
    r=a.length - 1
    while(l<r)
        m=(l+r)/2
        if(a[m]==x)
            return m
        end
        if(a[m]>x && x>=a[l])
            r=m
        else
            l=m+1
        end
        if(a[m]<x && x<a[r])
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

puts search_rotated_array([4,5,6,7,0,1,2],0)
puts search_rotated_array([4,5,6,7,0,1,2],3)
puts search_rotated_array([1],1)