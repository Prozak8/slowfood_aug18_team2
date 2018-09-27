Then("I should see {string} for {string}") do |content, product_name|
  product = Product.find_by(name: product_name)
  within("#product_#{product.id}") do 
    expect(page).to have_content content
  end
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end 

Given("I am on the {string} page") do |string|
  
end

When("I click the {string} button") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Given("the following user exists") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be on the login page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be able to fill in {string} with my {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I fill in {string} with {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I click {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see message {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end


