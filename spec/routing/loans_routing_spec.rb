# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LoansController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/users/1/loans').to route_to({ format: :json, controller: 'loans', action: 'index', user_id: '1', })
    end

    it 'routes to #show' do
      expect(get: '/users/1/loans/1').to route_to({ format: :json, controller: 'loans', action: 'show', user_id: '1', id: '1' })
    end

    it 'routes to #create' do
      expect(post: '/users/1/loans').to route_to({ format: :json, 'controller': 'loans', 'action': 'create', user_id: '1', })
    end

    it 'routes to #update via PUT' do
      expect(put: '/users/1/loans/1').to route_to({ format: :json, controller: 'loans', action: 'update', user_id: '1', id: '1' })
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/users/1/loans/1').to route_to({ format: :json, controller: 'loans', action: 'update', user_id: '1', id: '1' })
    end

    it 'routes to #destroy' do
      expect(delete: '/users/1/loans/1').to route_to({ format: :json, controller: 'loans', action: 'destroy', user_id: '1', id: '1' })
    end
  end
end