
module ABc
	class Vanshika
		
	
		attr_reader :hey
		
		
		def initialize(value) 
			@hey = value
		end
	end
end


obj = ABc::Vanshika.new("Vanshika")
puts obj.hey

# hierarchical namespacing

module Vanshika
	class ABC 
		attr_reader :heyyy
		def initialize(value)
			@heyyy = value
		end
	end
	
	
	module Vanshika_1   #hierarchical namespacing
	
	# Reuse of the class names
	class ABC
		@@var = "This is the module Vanshika_1 " +
				"and class ABC"
		def printVar()
			puts @@var
		end
	end
	end
	
	# Hierarchical namespace
	module Vanshika_2 
	
	# Reuse of the class names
	class ABC
		attr_reader :var
		def initialize(var)
		@var = var
		end
	end
	end
end




obj_heyyy = Vanshika::ABC.new("This is the module Vanshika " +
								"and class ABC") 
obj_heyyy1 = Vanshika::Vanshika_1::ABC.new()
obj_heyyy2 = Vanshika::Vanshika_2::ABC.new("This is the module Vanshika_2 " + 
										"and class ABC")
puts obj_heyyy.heyyy
puts obj_heyyy1.printVar()
puts obj_heyyy2.var


#nested modules
module Taggable
    
end



module Blog
  class Post
    
    include Taggable  
  end
  
  class Comment
    
    include Taggable  
  end
end

#mixin ( for multiple inheritance)

module G 
    def g1 
    end 
    def g2 
    end 
end 

module XYZ 
    def vansh 
    end 
    def anshika
    end 

    class ABC
    include G 
    include XYZ 
    def s1 
    end 
end 

obj = ABC.new 

#calling 
obj.g1 
obj.g2
obj.vansh 
obj.anshika 
obj.s1
end 