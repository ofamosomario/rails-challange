# frozen_string_literal: true

class CollectionSerializer
  def initialize(collection, key:, serializer:)
    @collection = collection
    @key = key
    @serializer = serializer
  end

  def call
    {
      key.to_sym => serialized_collection
    }
  end

  private

  attr_reader :collection, :key, :serializer, :meta

  def serialized_collection
    collection.map do |resource|
      serializer.new(resource).call
    end
  end
end
