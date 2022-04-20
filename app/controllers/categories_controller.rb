class CategoriesController < ApplicationController
  def new
    @category = Category.new
    show
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to new_category_path, notice: 'Categoria criada com sucesso'
    else
      render :new, status: :unprocessable_entity, alert: 'Não foi possível criar a categoria'
    end
  end

  def show
    @categories = Category.all
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      redirect_to new_category_path, notice: 'Categoria excluída com sucesso'
    else
      render :show, status: :unprocessable_entity, alert: 'Não foi possível excluir a categoria'
    end
  end

  private
  def category_params
    params.require(:category).permit(:name).merge(user: current_user)
  end
end
