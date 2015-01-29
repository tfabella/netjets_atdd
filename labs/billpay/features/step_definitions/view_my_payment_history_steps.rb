require 'page-object'

include PageObject::PageFactory

When(/^I go to my Payment History$/) do
  open_bank_homepage
  submit_valid_login
  view_payment_history
end

Then(/^I can view all of my paid bills$/) do
  payment_results = gather_payment_history
  expect(payment_results).to include 'most recent payment'
  # verify_list_of_payments
  # verify_my_most_recent_payment
end


When(/^I sort my payments by date$/) do
  open_bank_homepage
  submit_valid_login
  view_payment_history
  sort_by_date
end

Then(/^I can view all of my paid bills with the oldest payment displaying at the top of the list$/) do
  payment_results = gather_payment_history
  expect(payment_results).to include 'top of the list displays oldest payment'
end

And(/^my most recent payment at the bottom of the list$/) do
  expect(payment_results).to include 'bottom of the list displyas most recent payment'
end