require 'rails_helper'

RSpec.describe User, type: :model do
  context 'when provided all the required fields' do
    it 'should be able to create an user' do
      expect { User.create!({ name: 'John Doe' }) }.not_to raise_error
    end
  end

  context 'when all the required fields are not provided' do
    it 'should raise an error when attempting to create an user' do
      expect { User.create!({ }) }.to raise_error(ActiveRecord::NotNullViolation)
    end
  end
end
