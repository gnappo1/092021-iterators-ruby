def people
    {
        "Jon Snow" => {
          name: "Jon",
          email: "jon_snow@thewall.we",
          age: 36,
          favorite_ice_cream_flavors: ["chocolate", "vanilla"]
        },
        "Matteo Piccini" => {
            name: "Matteo",
            email: "matteo.piccini2@flatironschool.com",
            age: 30,
            favorite_ice_cream_flavors: ["pistacho", "strawberry"]
        },
        "Freddy Mercury" => {
          name: "Freddy",
          email: "freddy@mercury.com",
          age: 50,
          favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
        },
        "Beyoncè Knowles" => {
            name: "Beyoncè",
            email: "bey@queen.com",
            age: 40,
            favorite_ice_cream_flavors: ["chocolate", "cookie dough", "lemon"]
        }
      }
end

def temperatures
    [
        [18, 19, 19, 13, 21, 22, 12, 29, 13, 15],
        [35, 39, 21, 25, 21, 22, 32, 39, 33, 15],
        [28, 29, 29, 23, 11, 22, 12, 19, 23, 25]
    ]
end


# Examples
array = [ true, -1, nil, 25, "Matteo", {age: 33}]

hash = {
    name: "Matteo",
    age: 30,
    phase: 3
}

# each - always returns the original array and is usually used to print something out 
array.each {|el| puts el}
# each_with_index - gives access to the lements position
array.each_with_index {|el, index| puts "#{index+1}. #{el}"}

# with_index - allows you to take an argument, the starting point for the index
array.each.with_index(1) {|el, index| puts "#{index}. #{el}"}

#collect/map - returns a new array with the elements implecitly returned from the block
array.map {|el| !!el}

#find/detect - returns the first match if the predicate is truthy, else nil
array.find {|el| el.class == Hash }

#find_all/select - returns all the matches if the predicate is truthy, else []
array.select {|el| el.class == Hash }

#reduce/inject - aggregates data into one final result
array.inject(10, :*)
array.each_with_index.reduce(0) { |memo, (el, index)| index == 0 || index == 1 ? memo : memo + el }

#none?, all?, any? - they allow you to iterate and return a boolean based on the truthiness of the predicate 
array.all? {|el| !!el}

#min, max - can take a block to specify how to evaluate min and max


# TODOS

# Iterate and print out contact details
# Create a new array with only the people over 40
# Calculate the average age
# Find out all the names of the people that like strawberry
# Delete the mint chip flavor from everyone's preferences, it's banned now
  
# print the output to the terminal for inspection