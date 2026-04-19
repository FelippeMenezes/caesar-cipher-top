def caesar_cipher(string, number)
  transformed = string.chars.map do |char|

    if char.match?(/[a-z]/)
      base = 'a'.ord
      position = char.ord - base
      new_position = position + number

      while new_position >= 26
        new_position -= 26
      end

      (new_position + base).chr

    elsif char.match?(/[A-Z]/)
      base = 'A'.ord
      position = char.ord - base
      new_position = position + number

      while new_position >= 26
        new_position -= 26
      end

      (new_position + base).chr

    else
      char
    end

  end

  result = transformed.join
  p result
end

p "What phrase do you want to encode?"
user_string = gets.chomp

p "What is the secret number of your code?"
secret_number = gets.chomp.to_i

caesar_cipher(user_string, secret_number)
