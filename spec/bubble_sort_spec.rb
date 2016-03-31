require 'bubble_sort'
require 'rspec'

# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)
#
# Difficulty: 3/5

describe "#bubble_sort" do
  it "works with an empty array" do
    expect(bubble_sort([])).to eq([])
  end

  it "works with an array of one item" do
    expect(bubble_sort([1])).to eq([1])
  end

  it "sorts numbers" do
    expect(bubble_sort([5, 4, 3, 2, 1])).to eq([1, 2, 3, 4, 5])
  end
end
