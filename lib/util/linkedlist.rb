require_relative 'node'

module Util
  class LinkedList
    attr_reader :head
    
    def initialize(key, value)
      @head = Util::Node.new(key, value, nil)
    end

    def add(key, value)
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
        current_node.next_node = Util::Node.new(key, value, nil)
    end

    def find(input)
      current_node = @head
      return current_node if current_node.key == input
      return false if !current_node.next_node
      while(current_node = current_node.next_node)
        return current_node if current_node.key == input
      end
    end

  end
end