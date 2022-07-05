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

  # def financial
  #   @title = 'Financial'
  #  # @incomes = Income.created_between(1.year.ago, Time.now)
  #  @search = ReportSearch.new(params[:search])
  #  @incomes = @search.scope
  # end

  # def production
  #   @title = 'Production'
  #   @flocks = Flock.all
  # end
end
