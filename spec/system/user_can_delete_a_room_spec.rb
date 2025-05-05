require 'rails_helper'

describe "User can delete a room" do
  context "when user create a room" do
    before do
      Room.create!(name: "Test Room")
    end
    it "allow user to deletes a room" do
      user_visits_rooms_path
      user_clicks_delete_room
      user_must_see_delete_message
    end
  end

  def user_visits_rooms_path
    visit rooms_path
  end

  def user_clicks_delete_room
    click_button 'Delete Room'
  end

  def user_must_see_delete_message
    expect(page).to have_content 'Room was successfully deleted.'
  end
end
