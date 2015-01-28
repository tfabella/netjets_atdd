include PageObject::PageFactory

module SouthwestInteractions

  def open_southwest
    visit_page SouthwestHomePage
  end

  def set_airports

    on_page FlightSchedulePage do |page|
      page.departure_city =  'originAirport_displayed'
      page.arrival_city = 'destinationAirport_displayed'
      page.submit
    end
    sleep 2
  end

end


World SouthwestInteractions