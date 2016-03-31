require 'no_repeats'
require 'rspec'

# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5

describe "#no_repeats" do
  it "should return a no repeat year" do
    expect(no_repeats(1234, 1234)).to eq([1234])
  end

  it "should not return a repeat year" do
    expect(no_repeats(1123, 1123)).to eq([])
  end

  it "should return only those years that have no repeated digits" do
    expect(no_repeats(1980, 1987)).to eq([
      1980,
      1982,
      1983,
      1984,
      1985,
      1986,
      1987
    ])
  end
end
