# frozen_string_literal: true

module ApiRenderers
  extend ActiveSupport::Concern

  included do
    rescue_from StandardError,
      with: :render_error
  end

  private

  def render_error(error)
    render json: {
      error: error
    }, status: :bad_request
  end

  def render_collection(collection, key:, serializer:)
    render json: CollectionSerializer.new(
      collection,
      key: key,
      serializer: serializer
    ).call
  end

  def render_resource(resource, key:, serializer:, status:)
    render json: EntitySerializer.new(
      resource,
      key: key,
      serializer: serializer
    ).call, status: status
  end
end
