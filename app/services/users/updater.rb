# frozen_string_literal: true

module Users
  class Updater < BaseUpdater
    private

    def build_resource
      user = {
        obj: User.find(attributes[:id]),
        attrs: {
          name: attributes[:name]
        }
      }
    end

    def post_create_hook(resource)
      if resource[:obj].valid?
        # Register the success log
        true
      else
        # Register the error log
        false
      end
    end
  end
end
