class UsersController < ApplicationController
  include CrudServices
  crud_services Users

  def index
    render_collection collection_fetcher.call,
      key: "users",
      serializer: UsersSerializer
  end
  
  def create
    render_resource creator.call,
      key: "user",
      serializer: UsersSerializer,
      status: :created
  end

  def create_params
    params.require(:user).permit(
      :name
    )
  end
end
