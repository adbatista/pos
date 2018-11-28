class ListsController < ApplicationController
  before_action :set_list, only: %i[show edit update destroy]

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
  end

  def edit
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to lists_path, notice: 'List was successfully created.'
    else
      render :new
    end
  end

  def update
    if @list.update(list_params)
      redirect_to lists_path, notice: 'List was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @list.destroy
  
    redirect_to lists_url, notice: 'List was successfully destroyed.'
  end

  private
    def set_list
      @list = List.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:name, :done)
    end
end
