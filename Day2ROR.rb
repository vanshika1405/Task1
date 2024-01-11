#variables 
# local 
age = 10
_Age = 10 

def example
    abc =10
    puts abc*10
end
puts example

# class variable 
class Student
    @@student_count =0
    def initialize(name, standard)
        @name = name 
        @standard=standard
    end 
    def total_count
        @@student_count+=1
        puts "total student are #{@@student_count}"
    end 
end


s1= Student.new("vansh", 10)
s1.total_count

#global variable

$global_variable = 10
class Class1 
def print_global 
puts "Global variable in Class1 is #$global_variable"
end
end
class Class2 
def print_global 
puts "Global variable in Class2 is #$global_variable"
end
end
class1obj = Class1.new
class1obj.print_global 
class2obj = Class2.new
class2obj.print_global 

#instance variable


class Customer 
	
    def initialize(id, name, addr) 
        
    # Instance Variables	 
    @cust_id = id 
    @cust_name = name 
    @cust_addr = addr 
    end
    
    # displaying result 
    def display_details() 
    puts "Customer id #@cust_id"
    puts "Customer name #@cust_name"
    puts "Customer address #@cust_addr"
    end
    end
    
    # Create Objects 
    cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya") 
    cust2 = Customer.new("2", "Poul", "New Empire road, Khandala") 
    
    # Call Methods 
    cust1.display_details() 
    cust2.display_details() 
    