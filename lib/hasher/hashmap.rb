require_relative '../util/linkedlist'

module Hasher
  class Hashmap
    def initialize
      @map_array = Array.new(10)
    end   

    def get(key)
      hashed_key = hash_key(key)
      bucket = map_array[hashed_key]
    end

    def add(key, value)
      hashed_key = hash_key(key)
      if (map_array[hashed_key].nil?)
        map_array[hashed_key] = Util::LinkedList.new(value)
      else
        bucket = map_array[hashed_key]
        bucket.add(value)
      end
    end

    def print_all
      map_array.each { |item | puts item }
    end

    def print(input)
    end

    def hash_key(input)
      input.hash % map_array.length
    end

    private

    attr_reader :map_array
  end
end