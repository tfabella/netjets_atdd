require 'page-object'
table(:schedules_table, :class => 'swa_feature_flightStatus_results_table swa_tables_grayTable2')

# create an array of hashes on this page
# match departure airport

class FlightScheduleResultsPage
  include PageObject

  def flights_today
    schedules_table_element.tbody.rows.to_a{|rows|rows.text}
  end


  # table_array = Array.new
  # row1 = {"departure"=>"CMH"}
  # row1 = {"arrival"=>"FLL"}
  # row1 = {"date"=>"today"}

end