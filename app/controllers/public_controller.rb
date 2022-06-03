class PublicController < ApplicationController

  def report
    @title = 'Report'
  end

  def dashboard
    @title = 'Dashboard'
    @incomes = Income.all
    @expenses = Expense.all
    @flocks = Flock.all
  end

  def financial
    @title = 'Financial'
   # @incomes = Income.created_between(1.year.ago, Time.now)
  end

  def production
    @title = 'Production'
    # @flocks = Flock.group_by_month(:created_at).count
  end
end
