#Method 1: 3 Iterative
#Complexity: O(n^3)
def method1(a)
    sub = 0
    for i in 0...a.length
        for j in i+1...a.length
            temp = 0
            for k in i...j
                temp += a[k]
            end
            if temp > sub
                sub = temp
            end
        end
    end
    return sub
end

#Method 2: 2 Iterative
#Complexity: O(n^2)

def method2(a)
    sub = 0
    for i in 0...a.length
        temp = a[i]
        for j in i+1...a.length
            temp += a[j]
            if(temp > sub)
                sub = temp
            end
        end
    end
    return sub
end

#Method 3: 1 Iterative
#Complexity: O(n)

def method3(a)
    sub = 0
    temp = 0
    for i in 0...a.length
        temp += a[i]
        if(temp<0)
            temp = 0
            next
        end
        if(temp > sub)
            sub = temp
        end
    end
    return sub
end

puts "Method 1: "
puts method1([-2,1,-3,4,-1,2,1,-5,4])
puts method1([1,-3,2,1,-1])
# -----------------------------------
puts "Method 2: "
puts method2([-2,1,-3,4,-1,2,1,-5,4])
puts method2([1,-3,2,1,-1])
# -----------------------------------
puts "Method 3: "
puts method3([-2,1,-3,4,-1,2,1,-5,4])
puts method3([1,-3,2,1,-1])
