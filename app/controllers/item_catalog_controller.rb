class ItemCatalogController < ApplicationController

  respond_to :json, :html
  helper_method :items

  def index
    respond_with items
  end

  protected

  def items
    if params[:q].present?
      @items ||= Item.where("lower(name) LIKE lower(?)", "%#{params[:q]}%")
    else
      Item.all
    end
  end

end
