# frozen_string_literal: true

class BaseSerializer
  def initialize(object)
    @object = object
  end

  def call
    data
  end

  private

  attr_reader :object

  def data
    raise NotImplementedError
  end
end
