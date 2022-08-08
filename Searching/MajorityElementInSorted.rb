# Find majority element(if exists) in a given sorted array.
# A majority element in an array A[] of size n is an element that appears more than n/2 times 
#Time-complexity: O(logn), Auxiliary-space:O(1)
#Algorithm: Binary-search

def majority(a)
    l = 0
    size = a.length
    r = size - 1
    m = (l+r)/2
    candidate = a[m]        #Nếu có phần tử majority thì phần tử ở giữa chắc chắn là phần tử majority
    if(a[l] == a[m+1] && size%2==0)     #Nếu a[0] == a[mid+1] và size%2 = 0 thì sẽ trả về a[mid] luôn vì từ a[0] -> a[mid+1] đã thoả điều kiện là cùng một giá trị và có độ tần suất xuất hiện lớn hơn n/2
        return candidate
    elsif(a[l]==a[m] && size%2!=0)      #Tương tự như trên nhưng xét trường hợp size % 2 !=0, do số lẻ bị làm tròn xuống, vd 5.5 làm tròn còn 5, nên nếu a[mid] ở vị trí 6 thì đã thoả điều kiện >= n/2 nên nhận
        return candidate
    else
        while(l<r) #Nếu không rơi vào 2 TH trên thì ta tìm phần tử ở giữa (candidate) trong mảng bằng binary_search phần tử bằng phần tử candidate nằm xa nhất về bên trái.
            m=(l+r)/2
            if(a[m]< candidate)
                l = m+1
            else
                r = m
            end
        end
        if(a[l] == candidate)  #nếu tìm thấy thì gán giá trị right = left + size/2 rồi so sánh, nếu a[right] = candidate thì thoá mãn đề bài
            r = l + size/2
            if(a[r] == candidate)
                return candidate
            else
                return -1
            end
        end
    end
end

puts majority([1,1,3,4,5,6,7,7,7,7,7,7,7,7,7,7,8,9,10])