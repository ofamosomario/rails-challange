# frozen_string_literal: true

module Loans
  class Updater < BaseUpdater
    private

    def build_resource
      loan = {
        obj: Loan.find(attributes[:id]),
        attrs: {
          title: attributes[:title],
          active: attributes[:active],
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
