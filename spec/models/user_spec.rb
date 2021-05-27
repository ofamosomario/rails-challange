require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) { FactoryBot.create(:user) }
  context 'when provided all the required fields' do
    it 'should be able to create an user' do
      expect { User }.not_to raise_error
    end
  end
  context 'when all the required fields are not provided' do
    it 'should raise an error when attempting to create an user' do
      expect { User.create!({ }) }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
  context 'when user name have more than 30 characters' do
    it 'should raise an error when attempting to create an user' do
      user = User.new( name: Faker::Lorem.sentence(word_count: 31) )
      user.valid?
      expect(user.errors.full_messages).to include('Name is too long (maximum is 50 characters)')
    end
  end
end
