
# Method that takes an array as an input and prints out the line, telling you if the line is empty

def line(line)

    # If no one is in line print "The line is currently empty."
    if line.count == 0
        puts "The line is currently empty."

    # If there are people in line print a list of who is in line.
    else

        string = "The line is currently:"

        # iterate through the array of names and include the index
        line.each.with_index do |name, index|

            # push each name and position (index + 1) to the end of the string
            string << " #{index + 1}. #{name}"
            
        end
        
        # print the line out
        puts string

    end
end

# Method that welcomes a customer and tells them their place in line.

def take_a_number (line, name)

    line.push("#{name}")

    place = line.count

    puts "Welcome, #{name}. You are number #{place} in line."

end

# Method that prints the first person in line and removes them from the array

def now_serving(line)

    # if no one is line say "There is nobody waiting to be served!"
    if line.count == 0

        puts "There is nobody waiting to be served!"

    # Else, serve the first person in line.
    else

        puts "Currently serving #{line[0]}."
        line.shift

    end

end