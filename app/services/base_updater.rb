# frozen_string_literal: true

class BaseUpdater < BaseService
  def initialize(attributes:)
    @attributes = attributes
  end

  def call
    before_create_hook
    build_resource.tap do |resource|

      raise StandardError unless resource[:obj].update(resource[:attrs])

      post_create_hook(resource)
    end
  end

  private

  attr_reader :attributes

  def before_create_hook; end

  def build_resource
    raise "Not implemented"
  end

  def post_create_hook(_resource)
    raise "Not implemented"
  end
end
