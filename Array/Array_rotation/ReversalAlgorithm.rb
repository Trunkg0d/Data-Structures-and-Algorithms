#Reversal Algorithm for array rotation
#Time complexity : O(n), Auxiliary space: O(1)

def rotate(a,d)
    if(d>a.length)
        d%=(a.length)
    end
    if(d==0)
        return a 
    else
        a = a[1,a.length] + [a[0]]
        return rotate(a,d-1)
    end
end

puts "#{rotate([1,2,3,4,5,6,7],10)}"
puts "#{rotate([1,2,3,4,5,6,7],0)}"
puts "#{rotate([1,2,3,4,5,6,7],5)}"
puts "#{rotate([1,2,3,4,5,6,7],7)}"