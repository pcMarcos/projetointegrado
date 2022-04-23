class ExpensesController < ApplicationController
  def new
    @expense = Expense.new
    categories
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.category_id = expense_params[:category_id]
    if @expense.save
      redirect_to root_path, notice: 'Despesa criada com sucesso'
    else
      categories
      render :new, status: :unprocessable_entity, alert: 'Não foi possível criar a despesa'
    end
  end

  def index
    @expenses = Expense.all
  end

  def general
    index
  end

  def categories
    @categories = Category.all
  end

  def destroy
    @expense = Expense.find(params[:id])
    redirect_to general_expenses_path, notice: 'Despesa excluída com sucesso' if @expense.destroy
  end

  def edit
    categories
    @expense = Expense.find(params[:id])
  end

  def update
    @expense = Expense.find(params[:id])
    if @expense.update(expense_params)
      redirect_to general_expenses_path, notice: 'Despesa atualizada com sucesso'
    else
      categories
      render :new, status: :unprocessable_entity, alert: 'Não foi possível atualizar a despesa'
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :value, :description, :category_id).merge(user: current_user)
  end
end
