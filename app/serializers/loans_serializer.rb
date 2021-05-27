# frozen_string_literal: true

class LoansSerializer < BaseSerializer
  private

  def data
    {
      id: object.id,
      title: object.title,
      active: object.active
    }
  end
end
