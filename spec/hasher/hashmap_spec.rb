require 'hasher/hashmap'

RSpec.describe Hasher::Hashmap do
  it 'should have an array with length equal to input when initialized' do
    hashmap = Hasher::Hashmap.new(10)
    expectedLength = 10
    expect(hashmap.map_array.length).to eql(expectedLength)
  end
end