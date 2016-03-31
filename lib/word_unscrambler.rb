def word_unscrambler(word, dictionary)
  dictionary.select {|d| d if anagram?(word, d)}
end

def anagram?(word, dictionary_word)
  word.split("").sort == dictionary_word.split("").sort
end
