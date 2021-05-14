# frozen_string_literal: true

module Users
  class Creator < BaseCreator
    private

    def build_resource
      User.create(attributes)
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
