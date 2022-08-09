#Given an array of integers(both positive and negative),find the subarray with maximum product.
# Time Complexity: O(n),Auxiliary Space: O(1)

#Note:  It doesn’t work for arrays like {0, 0, -20, 0}, {0, 0, 0}.. etc

#Method 1: 2 Iterative
#Complexity: O(n^2)
def method1(a)
    mul = a[0]
    for i in 0...a.length 
        temp = a[i]
        if(i!=a.length-1)
            for j in i+1...a.length
                temp*=a[j]
                if(temp>mul)
                    mul = temp
                end
            end
        end
        if(temp > mul)
            mul = temp
        end
    end
    return mul
end

puts "Method 1: "
puts "#{method1([6, -3, -10, 0, 2])}"
puts "#{method1([-1, -3, -10, 0, 60])}"
puts "#{method1([-2, -40, 0, -2, -3])}"
puts "#{method1([1, -2, -3, 0, 7, -8, -2])}"
puts "#{method1([-2, -3, 0, -2, -40])}"


