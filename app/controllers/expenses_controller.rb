class ExpensesController < ApplicationController
  before_action :set_expense, only: %i[ show edit update destroy ]

  def index
    @expenses = Expense.order(:batch_id).page(params[:page])
    @title = 'All Expenses'
  end

  def show
    @title = "Expense #{@expense.id}"
  end

  def new
    @expense = Expense.new
    @title = 'New Expense'
  end

  def edit
    @title = "Edit Expense #{@expense.id}"
  end

  def create
    @expense = Expense.new(expense_params)

    if @expense.save
      redirect_to expense_url(@expense), notice: "Expense was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @expense.update(expense_params)
      redirect_to expense_url(@expense), notice: "Expense was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @expense.destroy
      redirect_to expenses_url, notice: "Expense was successfully destroyed." 
  end

  private
    def set_expense
      @expense = Expense.find(params[:id])
    end

    def expense_params
      params.require(:expense).permit(:date, :category, :quantity, :unit_price, :total_amount, :description, :batch_id, :type_id)
    end
end
