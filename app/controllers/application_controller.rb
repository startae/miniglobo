class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  before_action :set_categories
  before_action :configure_permitted_parameters, if: :devise_controller?
  layout :layout_for_admin

  private
    def set_categories
      @categories = Category.all
    end

    def layout_for_admin
      'admin' if devise_controller?
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:remember_me, :email, :password) }
    end

    def after_sign_out_path_for(resource_or_scope)
      admin_path
    end
end
