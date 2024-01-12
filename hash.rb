# hash creation 
Hash.new

p Hash["x",30 , "y", 60]
p Hash["x"=>30, "y"=>60]



# Using new method
a = Hash.new("vanshika")
p a["x"] = 40
p a["y"] = 50
p a["x"] 
p a["y"]
p a["z"]


# .try_convert
p Hash.try_convert({3=>8})
p Hash.try_convert("3=>8")


# equality

a1 = {"x" => 4, "y" => 109}
a2 = {"x" => 67, "f" => 78, "z" => 21}
a3 = {"f" => 78, "x" => 67, "z" => 21}

# Using equality
 puts a1 == a2 
 puts a2 == a3 

 
# use of []=

a = {"x" => 45, "y" => 67}

# Using []=
a["x"]= 34
a["z"]= 89
p a



# use of default_proc method

a = Hash.new {|a, v| a[v] = v*v*v} 

# Using default_proc method
b = a.default_proc 
c = [] 
p b.call(c, 2)
p c 



# use of delete method

a = {"x" => 34, "y" => 60}


p a.delete("x") 
p a.delete("z") 


x= Hash.new{|a,v| a[v]=20}
puts x.delete("z")


# use of delete_if method

a = {"x" => 34, "y" => 60}

# Using delete_if method
p a.delete_if {|key, value| key >= "y"}



# use of each method

a = {"x" => 34, "y" => 60}

# Using each method
a.each {|key, value| puts "the value of #{key} is #{value}" }


# use of each_value method

# Using each_value method
a = { "g" => 23, "h" => 25, "x"=>3432, "y"=>3453, "z"=>676 }
a.each_value{|value| puts value }



# use of each-key method

a = {"x" => 34, "y" => 60}

# Using each-key method
a.each_key {|key| puts "the key is #{key} " }




# use of has_key? method

a = {"g" => 23, "h" => 25, "x"=>3432, "y"=>3453, "z"=>676}

# Using has_key? method
p a.has_key?("x")
p a.has_key?("p")



# use of has_value? method

a = { "v" => 23, "h" => 25, "x"=>3432, "y"=>3453000, "z"=>676 }

# Using has_value? method
p a.has_value?(23)
p a.has_value?(234)



#a = {|key ,value| puts "value of key #{key} is #{value}"}




# use of invert method

a = { "g" => 23, "h" => 25, "x"=>3432, "y"=>3453, "z"=>676 }

# Using invert method
p a.invert



# use of length method

a = {"v" => 23, "a" => 25 , "n"=> 12 , "s"=>56 , "h"=>98 , "i"=>76 , "k"=>45 , "a"=>55}

# Using the length method
p a.length


# use of merge method

a1 = { "abc" => 23, "h" => 25 }
a2 = { "h" => 2343, "i" => 4340 }

# Using merge method
p a1.merge(a2) 


# merging blocks
# Define two blocks
block1 = proc { |x| puts "Block 1: #{x}" }
block2 = proc { |y| puts "Block 2: #{y}" }

# Create a new block that calls both blocks
merged_block = proc do |arg|
  block1.call(arg)
  block2.call(arg)
end

# Call the merged block
merged_block.call("Hello")

# Define two hashes
hsh = { "a" => 1, "b" => 2, "c" => 3 }
other_hsh = { "b" => 20, "c" => 30, "d" => 40 }


hsh.merge!(other_hsh) do |key, old_value, new_value|

end

p hsh


# use of merge! method

a1 = {"g" => 23, "h" => 25}
a2 = {"h" => 2343, "i" => 4340}

# Using merge! method
p a1.merge!(a2) 

a1 = {"g" => 23, "h" => 25 }

# Using merge! method
p a1.merge!(a2) {|x, y, z| y}
p a1 

#rehash method 

x = [ "x", "g" ]
y = [ "y", "f" ]
a = { x => 45345, y => 6756 }
p a[x] 
p x[1] = "h"
p a[x] 


p a.rehash 
p a[x] 



# use of replace method

a = { "x" => 34, "y" => 60, "z"=>33 }

p a.replace({ "y" => 88, "x" => 987 })
