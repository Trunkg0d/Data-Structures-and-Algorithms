#Given array of integers(both +ve and -ve) find the two elements such that their sum is closest to given number x.
#Time-complexity: O(nlogn) // O(nlogn){for sorting}+O(n), Auxiliary-space:O(1)

#Algorithm: Sort the array and using two indexes left and right update the closest sum

def sort(a)
    for i in 0...a.length
        for j in 0...i
            if(a[j]>a[i])
                temp = a[j]
                a[j] = a[i]
                a[i] = temp
            end
        end
    end
    return a
end

def binary(a,x)
    l=0
    r= a.length - 1
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

def solve(a,x)
    hieu =0
    flag =0
    index1 = 0
    index2 = 0
    for i in 0...a.length
        if(binary(a,x-a[i])!=-1)
            puts "#{a[i]} + #{x-a[i]} = #{x}"
            return true
        else
            l=0
            r=a.length - 1
            while(l<=r)
                m=(l+r)/2
                if(a[m]>x-a[i])
                    temp = (x-(a[i] + a[m])).abs
                    if(flag==0)
                        hieu = temp
                        flag = 1
                        index1 = i
                        index2 = m
                    else
                        if(temp<hieu)
                            hieu = temp
                            index1 = i
                            index2 = m
                        end
                    end 
                    r=m-1
                else
                    temp = (x-(a[i] + a[m])).abs
                    if(flag==0)
                        hieu = temp
                        flag = 1
                        index1 = i
                        index2 = m
                    else
                        if(temp<hieu)
                            hieu = temp
                            index1 = i
                            index2 = m
                        end
                    end 
                    l=m+1
                end
            end
            
        end
    end
    puts "#{a[index1]} + #{a[index2]} is closest to x, distance is #{hieu}"
end

solve([1,3,2,4,5,10],9)
solve([10, 22, 28, 29, 30, 40],54)
solve([1, 3, 4, 7, 10],15)