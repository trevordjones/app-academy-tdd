def ordered_vowel_words(str)
  str.split(" ").select {|word| ordered?(word)}.join(" ")
end

def ordered?(word)
  vowels = word.split("").select {|l| ["a", "e", "i", "o", "u"].include? l}
  vowels == vowels.sort
end
