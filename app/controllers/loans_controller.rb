# frozen_string_literal: true

class LoansController < ApplicationController
  include CrudServices
  crud_services Loans

  def index
    render_collection collection_fetcher.call,
      key: 'loans',
      serializer: LoansSerializer
  end
  
  def show
    render_unity unity.call,
    key: 'loans',
    serializer: LoansSerializer
  end
  
  def create
    render_resource creator.call,
      key: 'loans',
      serializer: LoansSerializer,
      status: :created
  end

  def update
    render_resource updater.call,
      key: 'user',
      serializer: LoanUpdatedSerializer,
      status: :created
  end

  def destroy
    render_destroy destroyer.call,
    key: 'loans',
    serializer: DestroySerializer
  end

  def create_params
    params.require(:loan).permit(
      :title, :active, :user_id
    )
  end
end
