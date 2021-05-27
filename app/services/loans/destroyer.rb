# frozen_string_literal: true

module Loans
  class Destroyer < BaseDestroy
    private

    def resources
      Loan.destroy(id)
    end
  end
end
