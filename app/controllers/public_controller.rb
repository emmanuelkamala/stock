class PublicController < ApplicationController

  def report
    @title = 'Report'
  end

  def dashboard
    @title = 'Dashboard'
    @incomes = Income.all
    @expenses = Expense.all
    @flocks = Flock.all
    @batches = Batch.all
    @fixed_expenses = FixedExpense.all
  end

  def show 
    
  end
end
