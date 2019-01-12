feature 'Deleting a message' do
  scenario 'Check Delete button exists' do
    add_message_and_submit
    click_link 'web_helper message'
    expect(page).to have_button('Delete')
  end

  scenario 'Deleting a message and seeing all other messages' do
    add_message_and_submit
    fill_in :message, with: 'delete this message'
    click_button 'Submit'
    click_link 'delete this message'
    click_button 'Delete'
    expect(page).not_to have_content 'delete this message'
    expect(page).to have_content 'web_helper message'
  end
end
