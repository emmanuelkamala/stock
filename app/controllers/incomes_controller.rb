class IncomesController < ApplicationController
  before_action :set_income, only: %i[ show edit update destroy ]

  def index
    @incomes = Income.all
    @title = 'Incomes'
  end

  def show
    @title = "Income #{@income.id}"
  end

  def new
    @income = Income.new
    @title = "New Income"
  end

  def edit
    @title = "Edit Income #{@income.id}"
  end

  def create
    @income = Income.new(income_params)

    if @income.save
      redirect_to income_url(@income), notice: "Income was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @income.update(income_params)
      redirect_to income_url(@income), notice: "Income was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @income.destroy
      redirect_to incomes_url, notice: "Income was successfully destroyed."
  end

  private
    def set_income
      @income = Income.find(params[:id])
    end

    def income_params
      params.require(:income).permit(:date, :category, :quantity, :unit_price, :total_amount, :description, :type_id)
    end
end
