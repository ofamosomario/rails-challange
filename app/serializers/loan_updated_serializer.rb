# frozen_string_literal: true

class LoanUpdatedSerializer < BaseSerializer
  private

  def data
    {
      id: object[:obj].id
    }
  end
end
