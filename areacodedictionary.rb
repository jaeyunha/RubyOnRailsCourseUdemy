dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
# Write code here
    somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
# Write code here
    somehash[key.to_s]
end

# Execution flow
# Write your program execution code here
# puts "Do you want to lookup an area code based on a city name?(Y/N)"
# repl = gets.chomp.downcase
# if repl == "y"
#     while TRUE
#         puts "Which city do you want the area code for?"
#         puts "Enter your selection"   
#         city = gets.chomp
#         get_area_code(dial_book, city)

#     end
# else
#     puts "Program done"
# end

#solution 
loop do 
    puts "Do you want to lookup an area code based on a city name?(Y/N)"
    repl = gets.chomp.downcase
    break if repl != "y"
    puts "Which city do you want the area code for?"
    puts get_city_names(dial_book)
    puts "Eneter your selection"
    city = gets.chomp.downcase
    if dial_book.include?(city)
        puts "The area code for #{city} is #{get_area_code(dial_book, city)}"
    else
        puts "The city you want to look up is not included in the dial book"
    end
end

puts "Program done"