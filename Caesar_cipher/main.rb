def caesar_cipher(string, shift_factor)
  shift_factor = shift_factor % 26  # to get a valid range for conversion

  # convert string into an array of characters
  updated_string = string.split('')

  # iterate over each character and apply the shift
  encrypted_char = updated_string.map do |char|
    if char.match(/[A-Za-z]/)
      # determine the case of the character
      base = char.match(/[A-Z]/) ? 'A' : 'a'
      # apply the shift
      shifted_char = (((char.ord - base.ord) + shift_factor) % 26) + base.ord
      # convert ascii back to char
      shifted_char.chr
    else
      char
    end
  end
  encrypted_char.join('')
end

print "Enter your message to encrypt: "
input = gets.chomp
print "Enter the shifting factor: "
shift = gets.chomp.to_i
p caesar_cipher(input, shift)