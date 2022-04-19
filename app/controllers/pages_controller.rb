class PagesController < ApplicationController
  def show
    if valid_page?
      render template: "pages/#{params[:page]}"
    else
      render file: 'public/404.html', status: :not_found
    end
  end

  def create
    @expense = Expense.new(expense_params)
    if @expense.save
      redirect_to root_path
    end
  end

  def new
    @expense = Expense.new
  end

  private

  def valid_page?
    File.exist?(Pathname.new(Rails.root + "app/views/pages/#{params[:page]}.html.erb"))
  end

  def expense_params
    params.require(:site).permit(:name, :code, :description)
  end
end
