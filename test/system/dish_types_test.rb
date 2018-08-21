require "application_system_test_case"

class DishTypesTest < ApplicationSystemTestCase
  setup do
    @dish_type = dish_types(:one)
  end

  test "visiting the index" do
    visit dish_types_url
    assert_selector "h1", text: "Dish Types"
  end

  test "creating a Dish type" do
    visit dish_types_url
    click_on "New Dish Type"

    click_on "Create Dish type"

    assert_text "Dish type was successfully created"
    click_on "Back"
  end

  test "updating a Dish type" do
    visit dish_types_url
    click_on "Edit", match: :first

    click_on "Update Dish type"

    assert_text "Dish type was successfully updated"
    click_on "Back"
  end

  test "destroying a Dish type" do
    visit dish_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dish type was successfully destroyed"
  end
end
