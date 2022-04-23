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
      show
      render :new, status: :unprocessable_entity, alert: 'Não foi possível criar a categoria'
    end
  end

  def index
    @categories = Category.all
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

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to categories_path, notice: 'Categoria atualizada com sucesso'
    else
      show
      render :edit, status: :unprocessable_entity, alert: 'Não foi possível atualizar a categoria'
    end
  end

  private

  def category_params
    params.require(:category).permit(:name).merge(user: current_user)
  end
end
