require 'page-object'

include PageObject::PageFactory

When(/^I go to my Payment History$/) do
  open_bank_homepage
  submit_valid_login
  view_payment_history
end

Then(/^I can view all of my paid bills$/) do
  display_all_my_paid_bills
end