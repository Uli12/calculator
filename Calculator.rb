@num1 = 0
@num2 = 0
@operator = 0

def calculator
  puts "Welcome to Ruby Calculator"
  left
  op
  right
  puts "Calculating..."
  operation
  clear
end

def continue
  puts "Welcome to Ruby Calculator"
  op
  right
  puts "Calculating..."
  operation
  clear
end

def left 
  puts "What is the first number?"
  leftside = gets.strip
  unless leftside.match(/^\d+$/)
      puts "Please enter a valid number"
      left
  end
  @num1 = leftside.to_f
end

def op
  puts "Choose your operator (+, -, /, *)" 
  @operator = gets.strip
  unless @operator.match(/[\+\-\*\/]/)
    puts "Please enter a valid operator"
    op
  end
  
end

def right
  puts "What is the next number?"
  rightside = gets.strip
  unless rightside.match(/^\d+$/)
      puts "Please enter a valid number"
      right
  end
  @num2 = rightside.to_f
end
   
def operation
 
  case @operator
    when "+"
      answer = @num1 + @num2
      puts "#{answer}"
      @num1 = answer
    when "-"
      answer = @num1 - @num2
      puts "#{answer}"
      @num1 = answer
    when "*"
      answer = @num1 * @num2
      puts "#{answer}"
      @num1 = answer
    when "/"
      answer = @num1 / @num2
      puts "#{answer}"
      @num1 = answer
    else
      puts "Invalid input"
  end

  

end

def clear
  puts "Type 1 to contintue calculation"
  puts "Type 2 to RESET" 
  puts "Type 3 to EXIT"
    final = gets.to_i
    if final == 1
      continue
    elsif final == 2
      calculator
    elsif final == 3
      exit
    else
      puts "Invalid input. Please try again."
    end  
    calculator
end

calculator


