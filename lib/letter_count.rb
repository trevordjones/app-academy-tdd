def letter_count(str)
  hash = {}
  str.gsub(" ", "").split("") .each do |letter|
    hash[letter] ? hash[letter] += 1 : hash[letter] = 1
  end
  hash
end
