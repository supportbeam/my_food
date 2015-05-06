class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to foods_url
    else
      render :new
    end
  end

  def show
    @food = Food.find(params[:id])
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    if @food.update_attributes(food_params)
      redirect_to food_path(@food)
    else
      render :edit
    end
  end

  private
  def food_params
    params.require(:food).permit(:name, :calories, :carbohydrate, :protein, :fat, :categories)
  end

end
