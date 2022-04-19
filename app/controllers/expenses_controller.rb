class ExpensesController < ApplicationController
  def new
    @expense = Expense.new
    @expenses = Expense.all
  end

  def create
    @expense = Expense.new(expense_params)
    redirect_to root_path, notice: 'Despesa criada com sucesso' if @expense.save
  end

  def show
    @expenses = Expense.all
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :value, :description)
  end
end
