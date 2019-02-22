class ApplicationController < ActionController::Base
  before_action :get_user

  def get_user
    if user_signed_in?
      @user = current_user
      @user
    end
  end

end
