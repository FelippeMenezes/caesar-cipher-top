# frozen_string_literal: true

def caesar_cipher(string, number)
  string.gsub(/[a-z]/i) do |char|
    if char.match?(/[a-z]/)
      replace_downcase_string(number, char)
    else
      replace_upcase_string(number, char)
    end
  end
end

def replace_downcase_string(number, char)
  base = 'a'.ord
  position = char.ord - base
  new_position = (position + number) % 26
  (new_position + base).chr
end

def replace_upcase_string(number, char)
  base = 'A'.ord
  position = char.ord - base
  new_position = (position + number) % 26
  (new_position + base).chr
end
