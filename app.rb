def hello
  puts "Hi"
end

def validate_string(str)
  if str.is_a?(String)
    return
  end

  raise "The text must be a string."
end

def str_reverse(str)
  validate_string(str)
  puts "This is the string reversed:\n" + str.downcase.reverse.capitalize
end

def str_upper_lower(str)
  validate_string(str)

  commands_for_methods = [1, 2]
  user_input = nil

  until commands_for_methods.include?(user_input)
    puts "\n
    Please enter a valid method value:\n
    1. Downcase
    2. Upcase"
    user_input = gets.chomp.to_i
  end

  if user_input == 1
    puts str.downcase
  elsif user_input == 2
    puts str.upcase
  else
    puts "Internal error, sorry, please try again"
  end
end

def str_fragment_finder(str, sub_str)
  validate_string(str)
  str_found = str.include?(sub_str.to_s)
  puts str_found ? "Yes, this fragment exists" : "No, this fragment was not found"
end

def str_concat(str, another_str)
  validate_string(str)
  str_concat_target = str.concat(another_str.to_s)
  # same as str + another_str, but more efficient
  puts "This is your concatenated string: \n" + str_concat_target
end

def str_length(str)
  validate_string(str)
  # str.length returns an integer, so, to_s for concat
  puts "The length of the string is: \n" + str.length.to_s
end

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
# %w = allows to create an array of strings where element are separate by whitespaces.
# This notation is a convenient way to create an array of strings without needing to use quotes and commas to separate the elements manually.
$array_methods = %w[validate_string str_reverse str_upper_lower str_fragment_finder str_concat str_length]

def main
  puts "Welcome to my first App using Ruby"
  puts "Here, you can manipulate strings in certain ways"
  puts "Here the current methods available: "

  methods_map = {}

  $array_methods.each_with_index do |method, index|
    methods_map[index]=method
    puts "#{index}. #{methods_map[index]}"
  end

  puts "Please enter a number to choose the corresponding method: "
  method_choosed = gets.chomp


end

main if __FILE__ == $PROGRAM_NAME

=begin
How This Helps:
Understanding Ruby Methods: Creating methods for each feature enhances your grasp of defining and using functions in Ruby.
Handling User Input: Utilizing gets.chomp for user input familiarizes you with input/output operations in Ruby.
String Manipulation Techniques: Implementing various string manipulation operations strengthens your understanding of string methods available in Ruby.
Feel free to expand upon this skeleton code, add more features, error handling, or any other enhancements to deepen your understanding of Ruby programming.
=end
