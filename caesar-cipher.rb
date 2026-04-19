def caesar_cipher(string, number)
  string.chars.map do |char|

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

  end.join
end
