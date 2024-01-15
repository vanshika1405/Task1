#nested collection 

x = ["vanshika", [ "anshul", "Rishab"] , "shry", "sanju", "DP"]
puts "The first element of the nested Array is : #{x[1][0]}"
puts "The second element of the nested Array is : #{x[1][1]}" 

# deeper nested collection 
x = ["Mohan", [ "Satyam", "Rishab"] , "Paul", "Kriti", "Salim"]
puts "The first element of the nested Array is : #{x[1][1][0]}"
puts "The second element of the nested Array is : #{x[1][1]}" 

# nested hash 
nested_hash = { person1:{name:"alice", age:30 },person2:{name:"bob",age: 23}}
puts nested_hash[:person1][:name]
nested_hash[:person2][:age] = 26
puts nested_hash[:person2][:age]
