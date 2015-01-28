require 'page-object'

include PageObject::PageFactory

When(/^I look up the daily flight schedule between two cities$/) do
  open_southwest
  view_flight_schedule
  #enter_city_pair
  #click_search
end

Then(/^I get the daily flight schedule between those cities for that day$/) do
  #view_all_daily_flight_schedules_for_today_for_city_pair
end

And(/^I get the daily flight schedule between those cities for the previous day$/) do
  #select_previous_date
  #flight_schedules_disabled_for_yesterday_for_same_city_pair
end

And(/^I get the daily flight schedule between those cities for the next day$/) do
  #select_tomorrow's_date
  #view_all_daily_flight_schedules_for_tomorrow_for_same_city_pair
end