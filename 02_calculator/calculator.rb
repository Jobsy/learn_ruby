#write your code here

def add (addends1, addends2)
    sum = addends1 + addends2
    sum
end

def subtract (minuend, subtrahend)
    difference = minuend - subtrahend
    difference
end

def sum (sum_arr)
    # sum_arr.inject(0){|sum,x| sum + x }
    sum_arr.sum
end

# def multiply (*factors)
#     product =  1
#     factors.each { |factor| product = product * factor }
#     product
# end
def multiply (*factors)
    factors.inject(:*)
end

# def power (base, power)
#     base ** power
# end
def power (*base_and_power)
    base_and_power.inject(:**)
end

def factorial (n)
    if (n === 0)
        1
    else
        (1..n).inject(:*)
    end
end