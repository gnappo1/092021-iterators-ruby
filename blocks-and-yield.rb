
def square_away
    array = [1, 2, 3]
    array.each {|num| yield(num)}
end

square_away {|num| puts num ** 2}