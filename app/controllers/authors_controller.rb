class AuthorsController < ApplicationController
  include CrudServices
  crud_services Authors

  def index
    render_collection collection_fetcher.call,
      key: "authors",
      serializer: AuthorsSerializer
  end
  
  def create
    render_resource creator.call,
      key: "author",
      serializer: AuthorsSerializer,
      status: :created
  end

  def create_params
    params.require(:author).permit(
      :name
    )
  end
end
