class ApplicationController < ActionController::Base
  http_basic_authenticate_with :name => ENV['BASIC_AUTH_USERNAME'], :password => ENV['BASIC_AUTH_PASSWORD'] if Rails.env == "staging"
  def after_sign_in_path_for(resource)
    user_path(resource)
  end
end
