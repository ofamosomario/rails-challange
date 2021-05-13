# frozen_string_literal: true

module Authors
  class CollectionFetcher < BaseCollectionFetcher
    def initialize
    end
    
    private

    def resources
      Author.all
    end

    def post_create_hook(resource)
      if resource.valid?
        # Register the success log
        true
      else
        # Register the error log
        false
      end
    end
  end
end
