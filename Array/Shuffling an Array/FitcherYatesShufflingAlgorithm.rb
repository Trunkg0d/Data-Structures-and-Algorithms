#Fitcher-Yates shuffling algorithm
#(start from last element,swap with random element from the array,decrement array size by one and repeat until array size is 1)
#Time-complexity: O(n)

def shuffle(arr)
    n=arr.length
    for i in (n-1).downto(1)
        j=Random.rand(i+1)
        swap(arr,i,j)
    end
    print arr
end
 
def swap(arr,i,j)
   temp = arr[i]
   arr[i] = arr[j]
   arr[j] = temp
end

#Or use random in normal way like normal people :))
#Time-complexity: O(n)
def method(arr)
    for i in 0...arr.length
        j = Random.rand(arr.length)
        swap(arr,i,j)
    end
    print arr
end
 
shuffle([1,2,3,4,5,6])
puts
method([1,2,3,4,5,6])