require 'page-object'

class SouthwestHomePage
  include PageObject
  page_url 'www.southwest.com/'
  link(:flightschedule, :class => 'swa-footer--item', :text => 'Flight Schedules')

  def view_flight_schedule
    flightschedule
  end
end

