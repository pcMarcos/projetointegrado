class LimitsController < ApplicationController
  def new
    @limit = Limit.new
    @categories = Category.all
  end

  def create
    @limit = Limit.new(limit_params)
    if @limit.save
      redirect_to new_limit_path, notice: 'Limite criado com sucesso!'
    else
      render 'new', alert: 'Não foi possível criar o limite!'
    end
  end

  def index
    @limits = Limit.all
  end

  def destroy
    @limit = Limit.find(params[:id])
    redirect_to limits_path, notice: 'Limite excluído com sucesso!' if @limit.destroy
  end

  def edit
    @limit = Limit.find(params[:id])
    @categories = Category.all
  end

  def update
    @limit = Limit.find(params[:id])
    if @limit.update(limit_params)
      redirect_to limits_path, notice: 'Limite atualizado com sucesso'
    else
      render :new, status: :unprocessable_entity, alert: 'Não foi possível atualizar o limite'
    end
  end

  private

  def limit_params
    params.require(:limit).permit(:name, :value, :category_id).merge(user_id: current_user.id)
  end
end
