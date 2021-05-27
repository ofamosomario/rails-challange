# frozen_string_literal: true

module Users
  class Unity < BaseUnity
    private

    def resources
      User.find(id)
    end
  end
end
