#Arrays
#creating an array 
array =[1,2,3,4,5,6,7,8,9]
puts array
#or 



array =(0..10).to_a
puts array

def sum
   100+400
end
array = Array.new(10, sum)



# push operation on array
array = []
array.push(45)
puts array

#or 
 array<<200
 puts array

 #unshift adds element at start of array
 array.unshift(999)
 puts array

 #pop 
 array.pop()
 puts array

 #or shift method 
 array.shift()
 puts array

 #delete at method 
 array.delete_at(4)
 puts array

array =[100,200,3,56,45,78,34,334,564,nil,nil,nil,nil,564,nil]
puts array
 array.size

 #sort array
 abc=[90,80,70,60,50,40,30,20,10]
 abc.min
 puts abc

#include method
arr =[1,3,2,4,5,6]
arr.include?(5)


# creating string using []
str = ["vanshika", "vanshi", "vanshu", "hehehe"]

# accessing multiple array elements
puts str[2,3]
