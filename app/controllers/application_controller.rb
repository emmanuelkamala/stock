class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  #before_action :ensure_proper_user

  protected

  def after_sign_in_path_for(user)
    dashboard_path
  end

  # def ensure_proper_user
  #   if current_user != user.id
  #     flash[:error] = "You do not have premission to do that."
  #     redirect_to root_path
  #   end
  # end
end
