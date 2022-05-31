class PublicController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  
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
