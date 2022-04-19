class ExpensesController < ApplicationController
  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(expense_params)
    if @expense.save
      redirect_to root_path, notice: 'Despesa criada com sucesso'
    end
  end

  def show
    @expenses = Expense.all
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :value, :description)
  end
end
