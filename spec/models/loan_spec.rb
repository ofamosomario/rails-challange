require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) { FactoryBot.create(:user) }
  context 'when provided all the required fields' do
    it 'should be able to create an loan' do
      loan = Loan.create!(
        user_id: user.id,
        title: 'Title test',
        active: true
      )
      expect { loan }.not_to raise_error
    end
  end
  context 'when all the required fields are not provided' do
    it 'should raise an error when attempting to create an loan' do
      expect { Loan.create!({ }) }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
  context 'when loan title have more than 30 characters' do
    it 'should raise an error when attempting to create an loan' do
      loan = Loan.new( title: Faker::Lorem.sentence(word_count: 31) )
      loan.valid?
      expect(loan.errors.full_messages).to include('Title is too long (maximum is 50 characters)')
    end
  end
  context 'when loan atcive is nil' do
    it 'should raise an error when attempting to create an loan' do
      loan = Loan.new( 
        user_id: user.id,
        title: Faker::Lorem.sentence(word_count: 2),
        active: nil
      )
      loan.valid?
      expect(loan.errors[:active]).to include('is not included in the list')
    end
  end
  context 'when loan user is nil' do
    it 'should raise an error when attempting to create an loan' do
      loan = Loan.new( 
        title: Faker::Lorem.sentence(word_count: 2),
        active: nil
      )
      loan.valid?
      expect(loan.errors[:user]).to include('must exist')
    end
  end
end
