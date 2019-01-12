feature 'Displaying the homepage' do
  background { visit '/' }

  scenario 'it displays a header' do
    expect(page).to have_content 'Messaging App'
  end

  scenario 'it displays a form' do
    find_field('Type message here').value
    find_button('Submit')
  end
end
