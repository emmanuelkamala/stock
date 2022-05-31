require "test_helper"

class FlocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flock = flocks(:one)
  end

  test "should get index" do
    get flocks_url
    assert_response :success
  end

  test "should get new" do
    get new_flock_url
    assert_response :success
  end

  test "should create flock" do
    assert_difference("Flock.count") do
      post flocks_url, params: { flock: { age: @flock.age, batch_no: @flock.batch_no, current_stock: @flock.current_stock, date_in: @flock.date_in, flock_stored: @flock.flock_stored, initial_stock: @flock.initial_stock, notes: @flock.notes, retirement_date: @flock.retirement_date, source: @flock.source, status_id: @flock.status_id, type_id: @flock.type_id } }
    end

    assert_redirected_to flock_url(Flock.last)
  end

  test "should show flock" do
    get flock_url(@flock)
    assert_response :success
  end

  test "should get edit" do
    get edit_flock_url(@flock)
    assert_response :success
  end

  test "should update flock" do
    patch flock_url(@flock), params: { flock: { age: @flock.age, batch_no: @flock.batch_no, current_stock: @flock.current_stock, date_in: @flock.date_in, flock_stored: @flock.flock_stored, initial_stock: @flock.initial_stock, notes: @flock.notes, retirement_date: @flock.retirement_date, source: @flock.source, status_id: @flock.status_id, type_id: @flock.type_id } }
    assert_redirected_to flock_url(@flock)
  end

  test "should destroy flock" do
    assert_difference("Flock.count", -1) do
      delete flock_url(@flock)
    end

    assert_redirected_to flocks_url
  end
end
