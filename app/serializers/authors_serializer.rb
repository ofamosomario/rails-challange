# frozen_string_literal: true

class AuthorsSerializer < BaseSerializer
  private

  def data
    {
      id: object.id,
      name: object.name
    }
  end
end
