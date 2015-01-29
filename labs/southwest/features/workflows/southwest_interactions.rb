include PageObject::PageFactory

module SouthwestInteractions

  def open_southwest
    visit_page SouthwestHomePage
  end

  def submit_city_pair
    on_page FlightSchedulePage do |page|
      page.departure_city =  'CMH'
      page.arrival_city = 'FLL'
      page.search
    end
    sleep 2
  end

  def view_all_flights_for_today
    page = on_page FlightScheduleResultsPage
  end

end


World SouthwestInteractions