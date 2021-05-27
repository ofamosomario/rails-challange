# frozen_string_literal: true

require 'rails_helper'
RSpec.describe UsersController, type: :controller do
  describe 'GET #index' do
    context 'when have users' do
      it 'return 200' do
        get :index
        User.create!( name: 'Test' )
        expect(response.status).to eq(200)
      end
    end
    describe 'POST #create' do
      subject { post :index, params: {} }
      context 'when create user' do
        it 'return 200' do
          User.new( name: 'Test' )
          expect(response.status).to eq(200)
        end
      end
    end
    describe 'DELETE #destroy' do
      let!(:user) { User.create!(name: 'Test') }
      subject { delete :destroy, params: { id: user.id } }
      context 'when score exists' do
        it 'deletes the user' do
          expect { subject }.to change(User, :count).by(-1)
        end
      end
    end
  end
end