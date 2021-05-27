# frozen_string_literal: true

require 'rails_helper'
RSpec.describe LoansController, type: :controller do
  let!(:user) { FactoryBot.create(:user) }
  describe 'GET #index' do
    subject { get :index, params: { user_id: user.id } }
    context 'when have loans' do
      it 'return 200' do
        Loan.create!( title: 'Test', active: true, user_id: user.id )
        expect(response.status).to eq(200)
      end
    end
    describe 'POST #create' do
      subject { post :index, params: { user_id: user.id } }
      context 'when create loan' do
        it 'return 200' do
          Loan.new( title: 'Test', active: true, user_id: user.id )
          expect(response.status).to eq(200)
        end
      end
    end
    describe 'DELETE #destroy' do
      let!(:loan) { Loan.create!( title: 'Test', active: true, user_id: user.id ) }
      subject { delete :destroy, params: { user_id: user.id, id: loan.id } }
      context 'when score exists' do
        it 'deletes the user' do
          expect { subject }.to change(Loan, :count).by(-1)
        end
      end
    end
  end
end