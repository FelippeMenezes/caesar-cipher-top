# frozen_string_literal: true

require_relative 'lib/caesar_cipher'

puts 'What phrase do you want to encode?'
user_string = gets.chomp

puts 'What is the secret number of your code?'
secret_number = gets.chomp.to_i

resultado = caesar_cipher(user_string, secret_number)

puts resultado
