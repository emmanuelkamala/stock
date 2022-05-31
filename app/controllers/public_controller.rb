class PublicController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index

  end

  def dashboard
    @title = 'Dashboard'
    @incomes = Income.all
    @expenses = Expense.all
    @flocks = Flock.all
  end

  def financial
    @title = 'Financial'
  end

  def production
    @title = 'Production'
  end
end
