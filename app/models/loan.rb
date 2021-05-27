# frozen_string_literal: true

class Loan < ApplicationRecord

  # MODEL RELATIONSHIP
  belongs_to :user

  # MODEL VALIDATE
  validates :title, length: { minimum: 3, maximum: 50 }, allow_blank: false
  validates_inclusion_of :active, in: [true, false]

end
