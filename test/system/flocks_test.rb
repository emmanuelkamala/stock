require "application_system_test_case"

class FlocksTest < ApplicationSystemTestCase
  setup do
    @flock = flocks(:one)
  end

  test "visiting the index" do
    visit flocks_url
    assert_selector "h1", text: "Flocks"
  end

  test "should create flock" do
    visit flocks_url
    click_on "New flock"

    fill_in "Age", with: @flock.age
    fill_in "Batch no", with: @flock.batch_no
    fill_in "Current stock", with: @flock.current_stock
    fill_in "Date in", with: @flock.date_in
    fill_in "Flock stored", with: @flock.flock_stored
    fill_in "Initial stock", with: @flock.initial_stock
    fill_in "Notes", with: @flock.notes
    fill_in "Retirement date", with: @flock.retirement_date
    fill_in "Source", with: @flock.source
    fill_in "Status", with: @flock.status_id
    fill_in "Type", with: @flock.type_id
    click_on "Create Flock"

    assert_text "Flock was successfully created"
    click_on "Back"
  end

  test "should update Flock" do
    visit flock_url(@flock)
    click_on "Edit this flock", match: :first

    fill_in "Age", with: @flock.age
    fill_in "Batch no", with: @flock.batch_no
    fill_in "Current stock", with: @flock.current_stock
    fill_in "Date in", with: @flock.date_in
    fill_in "Flock stored", with: @flock.flock_stored
    fill_in "Initial stock", with: @flock.initial_stock
    fill_in "Notes", with: @flock.notes
    fill_in "Retirement date", with: @flock.retirement_date
    fill_in "Source", with: @flock.source
    fill_in "Status", with: @flock.status_id
    fill_in "Type", with: @flock.type_id
    click_on "Update Flock"

    assert_text "Flock was successfully updated"
    click_on "Back"
  end

  test "should destroy Flock" do
    visit flock_url(@flock)
    click_on "Destroy this flock", match: :first

    assert_text "Flock was successfully destroyed"
  end
end
