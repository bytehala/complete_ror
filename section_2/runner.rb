require_relative 'crud'

users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]

secure_users = Crud.create_secure_users(users)

puts secure_users

puts
p Crud.authenticate_user("mashrur", "password1", secure_users)
obj = Crud.new
obj.instance_method