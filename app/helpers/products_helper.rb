module ProductsHelper
  def number_to_currency(number)
    sprintf("$%0.02f", number)
  end
end
