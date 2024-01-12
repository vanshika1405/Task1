#methods with argument 
def area(length , width)
    length*width
end
p area(23,4)

#methods with no argument 
def area
    length = 5
    width =5
    length *width
end 
puts area


def example (*var)
	
    
    puts "Number of parameters is: #{var.length}"
        
    
    for i in 0...var.length
        puts "Parameters are: #{var[i]}"
    end
    end
    
    
    example "vanshika", "sharma"
    example "abcde"
    