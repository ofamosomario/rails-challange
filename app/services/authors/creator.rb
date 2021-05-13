# frozen_string_literal: true

module Authors
  class Creator < BaseCreator
    private

    def build_resource
      Author.create(attributes)
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
