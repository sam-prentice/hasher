require 'util/linkedlist'
require 'util/node'

RSpec.describe Util::LinkedList do
  it 'should initialise with one Node' do
    list = Util::LinkedList.new("key", "value")
    expect(list.head).to be_a(Util::Node)
  end

  it 'should add a node when given a new key value pair' do
    list = Util::LinkedList.new("Key", "value")
    list.add("Key2", "value")
    expect(list.head.next_node).to be_a(Util::Node)
    expect(list.head.next_node.next_node).to eql(nil)
    expect(list.head.next_node.value).to eql("value")
  end

  it 'should return a Node when passed a key to search' do
    list = Util::LinkedList.new("Key", "Value")
    list.add("Key2", "Value")

    expect(list.find("Key")).to be_a(Util::Node)
    expect(list.find("Key2")).to be_a(Util::Node)
    expect(list.find("Key3")).to eql(nil)
    expect(list.find("Key").key).to eql("Key")
  end
end