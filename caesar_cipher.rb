# frozen_string_literal: true

def caesar_cipher(string, number)
  result = string.gsub(/[a-z]/i) do |char|
    if char.match?(/[a-z]/)
      replace_downcase_string(number, char)
    else
      replace_upcase_string(number, char)
    end
  end
  puts result
  result
end

def replace_downcase_string(number, char)
  base = 'a'.ord
  position = char.ord - base
  new_position = position + number
  new_position -= 26 while new_position >= 26
  (new_position + base).chr
end

def replace_upcase_string(number, char)
  base = 'A'.ord
  position = char.ord - base
  new_position = position + number
  new_position -= 26 while new_position >= 26
  (new_position + base).chr
end

puts 'What phrase do you want to encode?'
user_string = gets.chomp

puts 'What is the secret number of your code?'
secret_number = gets.chomp.to_i

caesar_cipher(user_string, secret_number)
