[1,2,3] .each{|x| puts x}





friends = ['vanshika', 'vedant', 'sanju', 'shry', 'DP']
invited_list = []

for friend in friends do
  if friend != 'vanshika'
  invited_list.push(friend)
  end
end

p invited_list

# using select 
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.select { |friend| friend != 'Brian' }

# reduce 
my_numbers = [5, 6, 7, 8]

my_numbers.reduce { |sum, number| sum + number }

# predicate method 

# one 
x=[1,2,3,4,5].one?{|num| num.even?}
puts x


#any
x=[1,2,3,4,5].any?{|num| num.even?}
puts x

a =7.between?(1, 9)
p a 