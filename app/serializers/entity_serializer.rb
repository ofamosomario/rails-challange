# frozen_string_literal: true

class EntitySerializer < BaseSerializer
  def initialize(object, key:, serializer:)
    @object = object
    @key = key
    @serializer = serializer
  end

  def call
    {
      key.to_sym => serialized_object
    }
  end

  private

  attr_reader :object, :key, :meta, :serializer

  def serialized_object
    serializer.new(object).call
  end
end
