# frozen_string_literal: true

module Users
  class Destroyer < BaseDestroy
    private

    def resources
      User.destroy(id)
    end
  end
end
