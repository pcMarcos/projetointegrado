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
      render :new, status: :unprocessable_entity, alert: 'Não foi possível criar a despesa'
    end
  end

  def show
    @expenses = Expense.all
  end

  def general
    show
  end

  def categories
    @categories = Category.all
  end

  def destroy
    @expense = Expense.find(params[:id])
    if @expense.destroy
      redirect_to general_expenses_path, notice: 'Despesa excluída com sucesso'
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :value, :description, :category_id).merge(user: current_user)
  end
end
