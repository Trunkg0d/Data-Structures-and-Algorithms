#Given an Bitonic Array(array of integers which is initially increasing and then decreasing),
#find the maximum value in the array
#Time-complexity: O(logn),Auxiliary-space:O(1)
#Algorithm: Binary-search

=begin
#caveat:This method works only for distinct numbers,
coz in case of too many duplicates cause it not possible to decide by constant comparisons at mid, which subarray to choose 
#it will not work for an array like {0, 1, 1, 2, 2, 2, 2, 2, 3, 4, 4, 5, 3, 3, 2, 2, 1, 1} .
=end

def Maximum_Bitonic_Array(a)
    l=0
    r=a.length - 1
    while(l<r)
        m = (l+r)/2
        if(a[m] > a[m-1] && a[m]>a[m+1])
            return a[m]
        end
        if(a[m]>a[m-1] && a[m]<a[m+1])
            l=m+1
        elsif(a[m]>a[m+1] && a[m]<a[m-1])
            r=m
        end
    end
end

puts Maximum_Bitonic_Array([1,2,3,4,2,1])
puts Maximum_Bitonic_Array([-3, 9, 18, 20, 17, 5, 1])
puts Maximum_Bitonic_Array([5, 6, 7, 8, 9, 10, 3, 2, 1])