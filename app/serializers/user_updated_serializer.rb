# frozen_string_literal: true

class UserUpdatedSerializer < BaseSerializer
  private

  def data
    {
      id: object[:obj].id
    }
  end
end
