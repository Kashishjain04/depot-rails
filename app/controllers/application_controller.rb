class ApplicationController < ActionController::Base
  before_action :authorize
  before_action :set_i18n_locale_from_params

  protected
  def authorize
    unless User.find_by(id: session[:user_id])
      redirect_to login_url, notice: 'Please log in'
    end
  end

  def set_i18n_locale_from_params
    locale = params[:locale] || I18n.default_locale
    I18n.locale = locale
  end
end
