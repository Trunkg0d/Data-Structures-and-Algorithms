=begin
Algorithm to print all the LEADERS in the array.
An element is leader if it is greater than all the elements to its right side,the rightmost element is always a leader. 
Time-complexity: O(n)
Auxiliary-space: O(1)
=end

def solve(a)
    b=[]
    for i in 0...a.length-1
        if(a[i]>a[i+1])
            flag=0
            j=i
            while(j<a.length)
                if(a[j]>a[i])
                    flag=1
                    break
                end
                j+=1
            end
            if(flag==0)
                b.push(a[i])
            end
        end
    end
    b.push(a[-1])
    return b        
end

puts "#{solve([16,17,4,3,5,2])}"
puts "#{solve([6,5,4,3,2,1])}"
puts "#{solve([1,2,3,4,5,6])}"