# frozen_string_literal: true

module CrudServices
  module ClassMethods
    def crud_services(crud_module)
      @crud_module = crud_module
    end

    attr_reader :crud_module
  end

  def self.included(base)
    base.extend(ClassMethods)
  end

  def collection_fetcher
    self.class.crud_module::CollectionFetcher.new()
  end

  def creator
    self.class.crud_module::Creator.new(
      attributes: create_params
    )
  end

  def updater
    self.class.crud_module::Updater.new(
      attributes: params
    )
  end

  def unity
    self.class.crud_module::Unity.new(
      id: params[:id]
    )
  end

  def destroyer
    self.class.crud_module::Destroyer.new(
      id: params[:id]
    )
  end
end
