# frozen_string_literal: true

class BaseCollectionFetcher < BaseService
  def call
    fetch_resources
  end

  private

  def fetch_resources
    resources
  end

  def resources
    raise "Not implemented"
  end
end
