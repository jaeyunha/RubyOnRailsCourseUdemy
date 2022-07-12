require_relative 'crud'

class Student
    include Crud
    attr_accessor :first_name, :last_name, :email, :username, :password


    def initialize(firstname, lastname, username, email, password)
        @first_name = firstname
        @last_name = lastname
        @username = username
        @email = email
        @password = password
    end


    def to_s
        "First name: #{@first_name}\nLast name: #{@last_name}\nusername: #{@username}\nemail: #{@email}\n"
    end

end

jaeyun = Student.new("Jaeyun", "Ha", "jaeyunha", "jaeyunha@berkeley.edu", "password1")
ashley = Student.new("Ashley", "Ha", "ashleyha", "ashleyha@berkeley.edu", "password2")

puts jaeyun
puts ashley

hashed_password = jaeyun.create_hash_digest(jaeyun.password)
 
puts hashed_password