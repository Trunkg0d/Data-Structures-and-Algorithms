def left_binary(a,n)
    l=0
    r=a.length 
    while(l<r)
        m =(l+r)/2
        if(a[m] < n)
            l = m+1
        else
            r = m
        end
    end
    if(a[l]==n)
        return l
    else
        return -1
    end
end

def right_binary(a,n)
    l=0
    r=a.length 
    while(l<r)
        m =(l+r)/2
        if(a[m] > n)
            r = m
        else
            l = m+1
        end
    end
    if(a[r-1]==n)
        return r-1
    else
        return -1
    end
end

puts left_binary([1,2,4,4,4,4,5,6,7],4)
puts right_binary([1,2,4,4,4,4,5,6,7],4)
puts left_binary([1,1,2,2,2,2,3,3,4,5,6,7,7,7,7],7)
puts right_binary([1,1,2,2,2,2,3,3,4,5,6,7,7,7,7],7)