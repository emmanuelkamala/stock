class FixedExpensesController < ApplicationController
  before_action :set_fixed_expense, only: %i[ show edit update destroy ]

  # GET /fixed_expenses
  def index
    @fixed_expenses = FixedExpense.order(params[:id]).page(params[:page])
    @title = 'All Expenses'
  end

  # GET /fixed_expenses/1
  def show
    @title = "Fixed Expense #{@fixed_expense.id}"
  end

  # GET /fixed_expenses/new
  def new
    @fixed_expense = FixedExpense.new
    @title = 'New fixed Expense'
  end

  # GET /fixed_expenses/1/edit
  def edit
    @title = "Edit Fixed Expense #{@fixed_expense.id}"
  end

  # POST /fixed_expenses
  def create
    @fixed_expense = FixedExpense.new(fixed_expense_params)

    if @fixed_expense.save
      redirect_to @fixed_expense, notice: "Fixed expense was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fixed_expenses/1
  def update
    if @fixed_expense.update(fixed_expense_params)
      redirect_to @fixed_expense, notice: "Fixed expense was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /fixed_expenses/1
  def destroy
    @fixed_expense.destroy
    redirect_to fixed_expenses_url, notice: "Fixed expense was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fixed_expense
      @fixed_expense = FixedExpense.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fixed_expense_params
      params.require(:fixed_expense).permit(:date_in, :type_of_expense, :cost)
    end
end
