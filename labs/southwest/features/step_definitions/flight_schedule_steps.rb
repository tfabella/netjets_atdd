require 'page-object'

include PageObject::PageFactory

When(/^I look up the daily flight schedule between two cities$/) do
  open_southwest
  on_page SouthwestHomePage do |page|
    page.view_flight_schedule
  end
  submit_city_pair
end

Then(/^I get the daily flight schedule between those cities for that day$/) do
  view_all_flights_for_today
end

And(/^I cannot get the daily flight schedule between those cities for the previous day$/) do
  #select_previous_date_is_disabled
end

And(/^I get the daily flight schedule between those cities for the next day$/) do
  #view_all_flights_for_tomorrow
end