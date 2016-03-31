require 'nearest_larger'
require 'rspec'

# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j]`.
#
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.
#
# Difficulty: 2/5

describe '#nearest_larger' do
  it 'returns the largest number to the right' do
    expect(nearest_larger([1,2,3,6,9,4,3], 2)).to eq(3)
  end
  
  it 'returns the largest number to the left' do
    expect(nearest_larger([3,5,4,6,2], 2)).to eq(1)
  end
  
  it 'returns the largest number to the left in case of a tie' do
   expect(nearest_larger([2,6,4,6], 2)).to eq(1)
  end
  
  it "returns a case with an answer > 1 distance to the left" do
    expect(nearest_larger([8,2,4,3], 2)).to eq(0)
  end

  it "returns a case with an answer > 1 distance to the right" do
    expect(nearest_larger([2,4,3,8], 1)).to eq(3)
  end
  
  it "returns nil if no larger number is found" do
    expect(nearest_larger( [2, 6, 4, 8], 3)).to eq(nil)
  end
  
end
