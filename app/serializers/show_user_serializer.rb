# frozen_string_literal: true

class ShowUserSerializer < BaseSerializer
  private

  def data
    {
      id: object.id,
      name: object.name,
      created_at: object.created_at,
      relationship: CollectionSerializer.new(
        object.loans,
        key: 'loans',
        serializer: LoansSerializer
      ).call
    }
  end
end
