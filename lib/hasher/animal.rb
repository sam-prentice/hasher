module Hasher
  class Animal
    def initialize(name, legs, likes)
        @name = name
        @legs = legs
        @likes = likes
    end

    attr_reader :name, :legs, :likes
  end
end
