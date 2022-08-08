# A sorted array is rotated at some unknown point, find the minimum element in it
# Time-complexity: O(logn),Auxiliary-space:O(1)

# Algorithm: Binary-Search

def minium_rotated_array(a)
    if(a.length ==1 )
        return a[0]
    else
        l =0
        r = a.length - 1
        while(l<r)
            m=(l+r)/2
            if(a[m]>a[m-1])
                if(a[l]>a[r])
                    l=m+1
                else
                    r = m
                end
            end
            if(a[m] < a[m-1] && a[m] < a[m+1])
                return a[m]
            end
        end
    end
end

puts minium_rotated_array([5, 6, 1, 2, 3, 4])
puts minium_rotated_array([4,5,6,7,0,1,2])
puts minium_rotated_array([3,4,5,1,2])
puts minium_rotated_array([11,13,15,17])
#It doesn’t look possible to search in O(Logn) time in all cases when duplicates are allowed. 
#ex: [2, 2, 2, 2, 2, 2, 2, 2, 0, 2]