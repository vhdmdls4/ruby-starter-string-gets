def hello
  puts "Hi"
end

def validate_string(str)
  if str.is_a?(String)
    return
  end

  raise "O texto deve ser uma string."
end

def str_method_reverse(str)
  validate_string(str)
  puts str.reverse
end

def str_method_upper_lower(str)
  validate_string(str)

  commands_for_methods = [1,2]
  user_input = nil

  until commands_for_methods.include?(user_input)
    puts "Insira um valor para método válido por favor, 1 para downcase e 2 para upcase"
    user_input = gets.chomp.to_i
  end

  if user_input == 1
    puts str.downcase
  elsif user_input == 2
    puts str.upcase
  else
    puts "Erro interno, desculpe, tente novamente"
  end
end

def str_method_frag_finder(str, sub_str)
  validate_string(str)
  str.include?(sub_str)
end

def str_concat(str, another_str)
  validate_string(str)
  str_concat_target = str.concat(another_str)
  #same as str + another_str, but more efficient
  puts str_concat_target
end

availableMethods = methods.select { |element| element.to_s.start_with?('str_method') }.map { |element| method(element) }

=begin
String Manipulation Tool
Features:
  String Reversal: Reverses a given string.
  String Uppercase/Lowercase: Converts a given string to uppercase or lowercase.
  Substring Finder: Finds a substring within a given string.
  String Concatenation: Concatenates two strings together.
  String Length: Calculates the length of a given string.
  Important Concepts:
              Functions/Methods: Create separate methods for each feature to encapsulate functionality.
  User Input Handling: Use gets.chomp to receive user input from the command line.
  String Manipulation: Utilize built-in Ruby methods like reverse, upcase, downcase, include?, concat, length, etc.
=end

def main

  puts "Welcome to my first App using Ruby"
  puts "Here, you can manipulate strings in certain ways"
  puts "Here the current methods available: "

  str_method_reverse('91814131')
  str_method_upper_lower("Versos")

end

main if __FILE__ == $PROGRAM_NAME

=begin
How This Helps:
Understanding Ruby Methods: Creating methods for each feature enhances your grasp of defining and using functions in Ruby.
Handling User Input: Utilizing gets.chomp for user input familiarizes you with input/output operations in Ruby.
String Manipulation Techniques: Implementing various string manipulation operations strengthens your understanding of string methods available in Ruby.
Feel free to expand upon this skeleton code, add more features, error handling, or any other enhancements to deepen your understanding of Ruby programming.
=end