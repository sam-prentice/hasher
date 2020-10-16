require_relative 'node'

module Util
  class LinkedList
    def initialize(value)
      @head = Util::Node.new(value, nil)
    end

    def add(value)
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
        current_node.next_node = Util::Node.new(value, nil)
    end

    def find(value)
      current_node = @head
      return current_node if current_node.value == value
      return false if !current_node.next_node
      while(current_node = current_node.next_node)
        return current_node if current_node.value == value
      end
    end

  end
end