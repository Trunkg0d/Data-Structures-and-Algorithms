#Given an array A[] and a number x, check for pair in A[] with sum as x

def binary_search(a,x)
    l=0
    r= a.length - 1
    while(l<=r)
        m = (l+r) /2
        if(a[m] < x )
            l = m+1
        else
            r = m-1
        end
        if(a[m]==x)
            return m
        end
    end
    return -1
end


def solve(a,x)
    for i in 0...a.length
        for j in 0...i
            if(a[j]>a[i])
                temp = a[i]
                a[i] = a[j]
                a[j] = temp
            end
        end
    end
    flag = 0
    for i in 0...a.length
        if(binary_search(a,x-a[i])!=-1)
            puts "#{a[i]} + #{a[binary_search(a,x-a[i])]} = #{x}"
            flag = 1
        end
    end
    if(flag == 0)
        puts "No pair"
        return false
    end
end
solve([5,4,10,-2,3,2,-1,9],9)