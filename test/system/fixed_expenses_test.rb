require "application_system_test_case"

class FixedExpensesTest < ApplicationSystemTestCase
  setup do
    @fixed_expense = fixed_expenses(:one)
  end

  test "visiting the index" do
    visit fixed_expenses_url
    assert_selector "h1", text: "Fixed expenses"
  end

  test "should create fixed expense" do
    visit fixed_expenses_url
    click_on "New fixed expense"

    fill_in "Cost", with: @fixed_expense.cost
    fill_in "Date in", with: @fixed_expense.date_in
    fill_in "Type of expense", with: @fixed_expense.type_of_expense
    click_on "Create Fixed expense"

    assert_text "Fixed expense was successfully created"
    click_on "Back"
  end

  test "should update Fixed expense" do
    visit fixed_expense_url(@fixed_expense)
    click_on "Edit this fixed expense", match: :first

    fill_in "Cost", with: @fixed_expense.cost
    fill_in "Date in", with: @fixed_expense.date_in
    fill_in "Type of expense", with: @fixed_expense.type_of_expense
    click_on "Update Fixed expense"

    assert_text "Fixed expense was successfully updated"
    click_on "Back"
  end

  test "should destroy Fixed expense" do
    visit fixed_expense_url(@fixed_expense)
    click_on "Destroy this fixed expense", match: :first

    assert_text "Fixed expense was successfully destroyed"
  end
end
