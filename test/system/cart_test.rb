require "application_system_test_case"

class CartTest < ApplicationSystemTestCase
  test "add to empty cart" do
    visit store_index_url
    click_on 'Add to Cart', match: :first

    assert_selector "h2", text: "Your Cart"
  end

  test "empty cart" do
    visit store_index_url
    click_on 'Add to Cart', match: :first
    click_on 'Empty Cart'

    assert has_no_selector? "h2", text: "Your Cart"
  end
end