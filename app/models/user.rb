# frozen_string_literal: true

class User < ApplicationRecord

  # MODEL RELATIONSHIP
  has_many :loans

  # MODEL VALIDATE
  validates :name, length: { minimum: 3, maximum: 50 }, allow_blank: false

end
