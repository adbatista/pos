class ItemsController < ApplicationController
  before_action :set_list

  def new
    @item = @list.items.new
  end

  def create
    @item = @list.items.new(item_params)

    if @item.save
      redirect_to list_path(@list), notice: 'Item was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @item = @list.items.find(params[:id])
    @item.destroy
    redirect_back fallback_location: list_path(@list), notice: 'Item was successfully destroyed.'
  end

  private
  def set_list
    @list = List.find(params[:list_id])
  end

  def item_params
    params.require(:item).permit(:name)
  end
end
