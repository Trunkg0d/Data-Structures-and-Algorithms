#Given an array find maximum difference between two elements such that the karger appears after the smaller.

#Approach 1: keep track of min so far and find the diff.
#Time-complexity:O(n),Auxiliary-space:O(1)

def method1(a)
    subtrac = 0
    for i in 0...a.length
        for j in i...a.length
            temp = a[j] - a[i]
            if(temp > subtrac)
                subtrac = temp
            end
        end
    end
    return subtrac
end

def method2(a)
    max_diff = a[1]-a[0]
    min_element = a[0]
    for i in 0...a.length
        if(a[i] - min_element > max_diff)
            max_diff = a[i] - min_element
        end

        if(a[i] < min_element)
            min_element = a[i]
        end
    end
    return max_diff
end

puts method1([100, 10, 5, 91, 1, 8, 16, 21])
puts method1([2, 3, 10, 6, 4, 8, 1])
puts method1([7, 9, 5, 6, 3, 2])

puts method2([100, 10, 5, 91, 1, 8, 16, 21])
puts method2([2, 3, 10, 6, 4, 8, 1])
puts method2([7, 9, 5, 6, 3, 2])
