class ApplicationController < ActionController::Base

  before_action :flash_action

  def flash_action
    @errors = flash[:errors]
  end



end
