require 'ordered_vowels'
require 'rspec'

# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.
#
# Difficulty: 2/5

describe "#ordered_vowel_words" do
  it "returns a word that is in order" do
    expect(ordered_vowel_words("amends")).to eq("amends")
  end

  it "does not return a word that is not in order" do
    expect(ordered_vowel_words("complicated")).to eq("")
  end
  
  it "handle double vowels" do
    expect(ordered_vowel_words("afoot")).to eq("afoot")
  end
  
  it "handles a word with a single vowel" do
    expect(ordered_vowel_words("ham")).to eq("ham")
  end
  
  it "handles a word with no vowel" do
    expect(ordered_vowel_words("crypt")).to eq("crypt")
  end
  
  it "handles a word with a single letter" do
    expect(ordered_vowel_words("o")).to eq("o")
  end
  
  it "ignores the letter y" do
    expect(ordered_vowel_words("tamely")).to eq("tamely")
  end
  
  it "processes a string with several words" do
    phrase = "this is a test of the vowel ordering system"
    result = "this is a test of the system"
  
    expect(ordered_vowel_words(phrase)).to eq(result)
  end
end
