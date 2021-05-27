# frozen_string_literal: true

class BaseDestroy < BaseService
  def initialize(id:)
    @id = id
  end

  def call
    destroy
  end

  private

  attr_reader :id

  def destroy
    resources
  end
end
