When("I select the hours I want to bill") do
  page.check("hour_ids_")
end
Then("My invoice should be created successfully") do
  
  expect(page).to have_content("Print PDF version")
end

Then("I should get {string}")do |string|
  expect(page).to have_content(string)
end
