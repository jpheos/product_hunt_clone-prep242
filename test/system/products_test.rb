require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit '/'
    assert_selector "h1", text: "Awesome Products"
    assert_selector ".product", count: Product.count
  end

  test "add new product" do
    login_as users(:george)
    visit 'products/new'

    fill_in "product_name", with: "Le wagon"
    fill_in "product_tagline", with: "Learn to code"

    click_on "Create Product"

    assert_equal root_path, page.current_path
    assert_text "Learn to code"
  end
end
