require 'rspec'
require 'word_unscrambler'

# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.
#
# Hint: To see if a string `s1` is an anagram of `s2`, split both
# strings into arrays of letters. Sort the two arrays. If they are
# equal, then they are anagrams.
#
# Difficulty: 3/5

describe "#word_unscrambler" do
  it "handles a simple word" do
    expect(word_unscrambler("cat", ["tac"])).to eq(["tac"])
  end

  it "does not inappropriately choose a word" do
    expect(word_unscrambler("cat", ["tom"])).to eq([])
  end

  it "handles a simple word from a larger dictionary" do
    expect(word_unscrambler("cat", ["tic", "toc", "tac", "toe"]))
      .to eq(["tac"])
  end

  it "only handles words of the correct length" do
    expect(word_unscrambler("cat", ["scatter", "tac", "ca"] )).to eq(["tac"])
  end

  it "handles multiple successful cases" do
    expect(word_unscrambler("turn", ["numb", "turn", "runt", "nurt"]))
      .to eq(["turn", "runt", "nurt"])
  end
end
