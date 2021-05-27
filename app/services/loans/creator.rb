# frozen_string_literal: true

module Loans
  class Creator < BaseCreator
    private

    def build_resource
      Loan.create(attributes)
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
