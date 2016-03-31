require 'letter_count'
require 'rspec'

# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
#
# Difficulty: 1/5

describe "#letter_count" do
  it "handles a simple case" do
    expect(letter_count("cat")).to eq({
      "c" => 1,
      "a" => 1,
      "t" => 1
    })
  end

  it "handles multiples of the same letter" do
    expect(letter_count("moon")).to eq({
      "m" => 1,
      "o" => 2,
      "n" => 1
    })
  end

  it "handles a multi-word case" do
    expect(letter_count("cats are fun")).to eq({
      "a" => 2,
      "c" => 1,
      "e"=> 1,
      "f" => 1,
      "n" => 1,
      "r" => 1,
      "s" => 1,
      "t" => 1,
      "u" => 1
    })
  end
end
