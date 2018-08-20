class ExpensesController < ApplicationController
  before_action :fetch_expense, only: [:update, :edit, :destroy, :show]
  def index
    @expenses = Expense.all
    @categories = Expense.categories
    @transaction_types = Expense.transaction_types
    @tab = :expenses
  end
  def new
    @expense = Expense.new
  end
  def create
    @expense = Expense.create(expense_params)
  end

  def show
  end

  def edit
  end

  def update
    @expense = Expense.update(params[:id], expense_params)
  end

  def destroy
    @expense.destroy
    flash[:error] = "Expense was deleted correctly"
    redirect_to expenses_path
  end

  private
    def expense_params
      params.require(:expense).permit(:concept, :date, :amount, :transaction_type, :category)
    end

    def fetch_expense
      @expense = Expense.find_by(id: params[:id])
    end
end
