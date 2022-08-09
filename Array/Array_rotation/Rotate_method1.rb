def rotate(a,d)
    if(d>a.length)
        d%=a.length
    end
    if(d==0)
        return a 
    else
        return a[d,a.length] + a[0,d]
    end
end

puts "#{rotate([1,2,3,4,5,6,7],10)}"
puts "#{rotate([1,2,3,4,5,6,7],0)}"
puts "#{rotate([1,2,3,4,5,6,7],5)}"
puts "#{rotate([1,2,3,4,5,6,7],7)}"