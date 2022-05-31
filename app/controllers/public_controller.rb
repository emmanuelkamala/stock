class PublicController < ApplicationController
  def index
    
  end

  def dashboard
    @title = 'Dashboard'
  end

  def financial
    @title = 'Financial'
  end

  def production
    @title = 'Production'
  end
end
