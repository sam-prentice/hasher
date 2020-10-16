require_relative '../util/linkedlist'

module Hasher
  class Hashmap
    attr_reader :map_array
    
    def initialize(length)
      @map_array = Array.new(length)
    end   

    def get(key)
      hashed_key = hash_key(key)
      bucket = map_array[hashed_key]
      bucket.find(key)
    end

    def add(key, value)
      hashed_key = hash_key(key)
      if (map_array[hashed_key].nil?)
        map_array[hashed_key] = Util::LinkedList.new(key, value)
      else
        bucket = map_array[hashed_key]
        bucket.add(key, value)
      end
    end

    def print_all
      puts "--- Print all ---"
      map_array.each_with_index do |bucket, index|
        if !bucket.nil?
          current_node = bucket.head
          puts current_node.value.to_json  + " at index: " + index.to_s
          while (current_node = current_node.next_node)
            puts current_node.value.to_json + " at index: " + index.to_s
          end
        end
      end
      puts "--- Print all end ---"
      puts ""
    end

    def print(input)
      puts "--- Print one ---"
      puts "Found:"
      puts get(input).value.to_json
      puts "--- Print one end ---"
      puts ""
    end

    def hash_key(input)
      input.hash % map_array.length
    end
  end
end