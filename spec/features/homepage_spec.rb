feature 'Displaying the homepage' do
  background { visit '/' }

  scenario 'it displays a header' do
    expect(page).to have_content 'Messaging App'
  end

  scenario 'it displays a form' do
    find_field('Type message here').value
    find_button('Submit')#.click - including .click method adds a row to the
    # db when running RSpec with a blank text value.
  end
end
