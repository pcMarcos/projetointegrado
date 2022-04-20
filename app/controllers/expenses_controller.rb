class ExpensesController < ApplicationController
  def new
    @expense = Expense.new
    @categories = Category.all
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.category_id = expense_params[:category_id]
    if @expense.save
      redirect_to root_path, notice: 'Despesa criada com sucesso'
    else
      render :new, status: :unprocessable_entity, alert: 'Não foi possível criar a despesa'
    end
  end

  def show
    @expenses = Expense.all
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :value, :description, :category_id).merge(user: current_user)
  end
end
