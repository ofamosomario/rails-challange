# frozen_string_literal: true

class UsersController < ApplicationController
  include CrudServices
  crud_services Users

  def index
    render_collection collection_fetcher.call,
      key: 'users',
      serializer: UsersSerializer
  end
  
  def show
    render_unity unity.call,
    key: 'users',
    serializer: ShowUserSerializer
  end
  
  def create
    render_resource creator.call,
      key: 'user',
      serializer: UsersSerializer,
      status: :created
  end

  def update
    render_resource updater.call,
      key: 'user',
      serializer: LoanUpdatedSerializer,
      status: :created
  end

  def update
    render_resource updater.call,
      key: 'user',
      serializer: UserUpdatedSerializer,
      status: :created
  end

  def destroy
    render_destroy destroyer.call,
    key: 'users',
    serializer: DestroySerializer
  end

  def create_params
    params.require(:user).permit(
      :name
    )
  end
end
