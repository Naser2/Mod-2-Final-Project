require 'test_helper'

class RollDiceControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get roll_dice_name_url
    assert_response :success
  end

  test "should get description" do
    get roll_dice_description_url
    assert_response :success
  end

end
