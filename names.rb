a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Jessie", :last_name => "De Leon"}
e = {:first_name => "Jaybee", :last_name => "Balog"}
names = [a, b, c, d, e]

puts "You got " + names.count.to_s + " names in the 'names' array"

names.each { |name| puts "The name is " + name.values.join(" ") }

#This is pretty clean Nathaniel.  Pretty nice how Ruby can do a lot of one-liners.  - Todd
