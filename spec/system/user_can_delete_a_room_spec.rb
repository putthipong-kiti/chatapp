require 'rails_helper'

RSpec.describe "User can delete a room", type: :system do
  before do
    Room.create!(name: "Test Room")
  end

  it "deletes a room" do
    visit rooms_path
    click_button 'Delete Room'
    expect(page).to have_content 'Room was successfully deleted.'
  end
end
