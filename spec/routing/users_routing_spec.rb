# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UsersController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/users').to route_to({ format: :json, controller: 'users', action: 'index' })
    end

    it 'routes to #show' do
      expect(get: '/users/1').to route_to({ format: :json, controller: 'users', action: 'show', id: '1' })
    end

    it 'routes to #create' do
      expect(post: '/users').to route_to({ format: :json, 'controller': 'users', 'action': 'create' })
    end

    it 'routes to #update via PUT' do
      expect(put: '/users/1').to route_to({ format: :json, controller: 'users', action: 'update', id: '1' })
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/users/1').to route_to({ format: :json, controller: 'users', action: 'update', id: '1' })
    end

    it 'routes to #destroy' do
      expect(delete: '/users/1').to route_to({ format: :json, controller: 'users', action: 'destroy', id: '1' })
    end
  end
end
