class ItemCatalogController < ApplicationController

  respond_to :json, :html
  helper_method :items

  def index
    respond_with items
  end

  protected

  def items
    if params[:term].present?
      @items ||= Item.where("lower(name) LIKE lower(?)", "%#{params[:term]}%").order(:name)
    else
      Item.order(:name)
    end
  end

end
