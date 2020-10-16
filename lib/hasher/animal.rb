require 'json'

module Hasher
  class Animal
    def initialize(name, legs, likes)
      @name = name
      @legs = legs
      @likes = likes
    end

    def as_json(options={})
      {
          name: @name,
          legs: @legs,
          likes: @likes
      }
    end

    def to_json(*options)
      as_json(*options).to_json(*options)
    end

    attr_reader :name, :legs, :likes
  end
end
