class StoreController < ApplicationController
  include CurrentCart
  skip_before_action :authorize
  before_action :set_cart

  def index
    locale = I18n.locale
    if params[:set_locale]
      session[:locale] = params[:set_locale]
      redirect_to store_index_url(locale: params[:set_locale])
    else
      @products = Product.where(locale: [locale.upcase, 'All']).order(:title)
    end
  end
end
