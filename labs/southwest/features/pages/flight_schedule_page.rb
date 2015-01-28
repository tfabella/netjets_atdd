require 'page-object'

class FlightSchedulePage
  include PageObject

  text_field(:departure_city, :id => 'originAirport_displayed')
  text_field(:arrival_city, :id => 'destinationAirport_displayed')
  button(:search, :id => 'flightSchedulesForm_submitButton')

end



