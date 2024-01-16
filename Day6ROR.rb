# methods visibility

class Fruits 

    # define method 
    def apple 
        puts "Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found. Apples have been grown for thousands of years in Asia and Europe and were introduced to North America by European colonists. Apples have religious and mythological significance in many cultures, including Norse, Greek, and European Christian tradition."
        puts"\n"
    end 

    public 
    def mango 
        puts "A mango is an edible stone fruit produced by the tropical tree Mangifera indica. It is believed to have originated in southern Asia, particularly in eastern India, Bangladesh, and the Andaman Islands."
    end 
end

    obj=Fruits.new()

    #calling 
    obj.apple()
    obj.mango()









    #The methods of a class which are declared protected 
    #can only be called from the class in which it is declared and the classes derived from it.

    

# super class 
class Parent 
	
	
	protected 

def protectedMethod 
		puts "protectedMethod called!"
	end

end

# sub class 
class Vanshika < Parent 

def publicMethod 
	# protected method called in public method 
	self.protectedMethod 
end

end

# creating object 
obj = Vanshika.new

# calling method 
obj.publicMethod 







# pvt method 

class ABC
	
	
	private 

def privateMethod 
		puts "privateMethod called!"
end

public 

def publicMethod 
	                         # private method called in public method 
	privateMethod 
end

end


obj = ABC.new


obj.publicMethod 

# aliase method 

class User
    def fullname
      'vanshika'
    end
   
    alias_method :username, :fullname
    alias_method 'name',    :username
  end
  
  u = User.new
  
  p u.fullname 
  p u.username 
  p u.name  