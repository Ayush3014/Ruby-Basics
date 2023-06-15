=begin
Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

> substrings("Howdy partner, sit down! How's it going?", dictionary)
=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
=end

def substrings(word, dictionary)
  hash = {}
  word.downcase!

  dictionary.each do |substring|
    count = word.scan("#{substring.downcase}").length
    hash[substring] = count if count > 0
  end 
  hash
end 

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
puts "Enter the word to be searched: "
word = gets.chomp
substr = substrings(word, dictionary)
puts substr