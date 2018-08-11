class ExpensesController < ApplicationController
  def index
    @tab = :expenses
  end
  def new
    @expense = Expense.new
  end
end
