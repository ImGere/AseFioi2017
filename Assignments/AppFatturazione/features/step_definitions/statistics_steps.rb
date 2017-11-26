Then("I should see an empty {string} list message") do |string|
  expect(page).to have_content("There are no #{string} for #{@user.name}.")
end
