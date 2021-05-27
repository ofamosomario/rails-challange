# frozen_string_literal: true

class BaseUnity < BaseService
  def initialize(id:)
    @id = id
  end

  def call
    unity
  end

  private

  attr_reader :id

  def unity
    resources
  end
end
