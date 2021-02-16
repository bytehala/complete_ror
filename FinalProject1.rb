
require 'bcrypt'

my_password = BCrypt::Password.create("my password");

puts my_password.cost
puts my_password
puts my_password.class
puts my_password == "my password"