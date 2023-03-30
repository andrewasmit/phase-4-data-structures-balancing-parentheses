require_relative './stack'

def balancing_parentheses(string)
    stack = Stack.new
    counter = 0
    string.chars.each do |char|
        if char == "(" then
            stack.push(char)
            counter+=1
        else
            stack.push(char)
            counter -=1
        end
    end 
    if counter == 0 && stack.peek == "("
        2
    elsif counter < 0
        counter * -1
    else
        counter
    end
end