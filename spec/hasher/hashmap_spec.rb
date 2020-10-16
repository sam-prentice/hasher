require 'hasher/hashmap'
require 'hasher/animal'
require 'util/node'

RSpec.describe Hasher::Hashmap do
  it 'should have an array with length equal to input when initialized' do
    hashmap = Hasher::Hashmap.new(10)
    expectedLength = 10
    expect(hashmap.map_array.length).to eql(expectedLength)
  end

  it 'should return a value between 0 and map_array length' do
    hashmap = Hasher::Hashmap.new(10)
    expect(hashmap.hash_key("Deer")).to be_between(0,9).inclusive
    expect(hashmap.hash_key("Snake")).to be_between(0,9).inclusive
    expect(hashmap.hash_key("Goat")).to be_between(0,9).inclusive
    expect(hashmap.hash_key("Dugong")).to be_between(0,9).inclusive
    expect(hashmap.hash_key("Leopard")).to be_between(0,9).inclusive
    expect(hashmap.hash_key("Bear")).to be_between(0,9).inclusive
    expect(hashmap.hash_key("Civet")).to be_between(0,9).inclusive
    expect(hashmap.hash_key("Armadillo")).to be_between(0,9).inclusive
    expect(hashmap.hash_key("Ant")).to be_between(0,9).inclusive
    expect(hashmap.hash_key("Dog")).to be_between(0,9).inclusive
  end

  it 'should create a linked list in the array when a value is added' do
    hashmap = Hasher::Hashmap.new(10)
    animal = Hasher::Animal.new("Deer", 4, ["grass"])
    hashed_key = hashmap.hash_key("Deer")
    hashmap.add(animal.name, animal)

    expect(hashmap.map_array[hashed_key]).to be_a(Util::LinkedList)
    expect(hashmap.map_array[hashed_key].head.key).to eql("Deer")
  end

  it 'should return matching Node when provided an input' do
    hashmap = Hasher::Hashmap.new(10)
    animal = Hasher::Animal.new("Deer", 4, ["grass"])
    hashed_key = hashmap.hash_key("Deer")
    hashmap.add(animal.name, animal)
    expectedResult = hashmap.map_array[hashed_key].head

    expect(hashmap.get("Deer")).to eql(expectedResult)
  end

  it 'should return matching Node when provided an input and there are exisitng nodes' do
    hashmap = Hasher::Hashmap.new(1)
    animal = Hasher::Animal.new("Deer", 4, ["grass"])
    animal2 = Hasher::Animal.new("Snake", 0, ["eggs"])
    hashed_key = hashmap.hash_key("Deer")
    hashed_key = hashmap.hash_key("Snake")
    hashmap.add(animal.name, animal)
    hashmap.add(animal2.name, animal2)
    expectedResult = hashmap.map_array[hashed_key].head.next_node

    expect(hashmap.get("Snake")).to eql(expectedResult)
  end

end