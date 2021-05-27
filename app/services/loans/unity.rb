# frozen_string_literal: true

module Loans
  class Unity < BaseUnity
    private

    def resources
      Loan.find(id)
    end
  end
end
