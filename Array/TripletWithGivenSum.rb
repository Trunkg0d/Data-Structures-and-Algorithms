#Given an array and a value, find if there is a triplet in array whose sum is equal to the given value.

#Time-complexity: O(n^3)

def method1(a,x)
    for i in 0...a.length
        for j in 0...i 
            for k in 0...j
                if(a[i] + a[j] + a[k]==x)
                    puts "#{a[i]} + #{a[j]} + #{a[k]} = #{x}"
                    return true
                end
            end
        end
    end
    puts "No triplet"
    return -1
end

#Time-complexity: O(n^2.logn)

def binary(a,x)
    l=0
    r=a.length - 1
    while(l<=r)
        m=(l+r)/2
        if(a[m]<x)
            l=m+1
        elsif(a[m]>x)
            r=m-1
        else
            return m 
        end
    end
    return -1
end

def method2(a,x)
    for i in 0...a.length
        for j in 0...i 
            if(binary(a,x-a[i]-a[j])!=-1)
                puts "#{a[i]} + #{a[j]} + #{x-a[i]-a[j]} = #{x}"
                return true
            end
        end
    end
    puts "No triplet"
    return -1
end

def method3(a,x)
    for i in 0...a.length
        sum = x-a[i]
        l=i+1
        r=a.length - 1
        while(l<=r)
            if(a[l]+a[r]>sum)
                r-=1
            elsif(a[l]+a[r]<sum)
                l+=1
            else
                puts "#{a[i]} + #{a[r]} + #{a[l]} = #{x}"
                return true
            end
        end
    end
    puts "No triplet"
    return -1
end


puts "Method 1: "
method1([12, 3, 4, 1, 6, 9],25)
method1([12, 3, 4, 5, 10, 13, 1, 6, 9],17)
method1([3,2,5,1],17)
puts "Method 2: "
method2([12, 3, 4, 1, 6, 9],25)
method2([12, 3, 4, 5, 10, 13, 1, 6, 9],17)
method2([3,2,5,1],17)
puts "Method 3: "
method3([12, 3, 4, 1, 6, 9],25)
method3([12, 3, 4, 5, 10, 13, 1, 6, 9],17)
method3([3,2,5,1],17)