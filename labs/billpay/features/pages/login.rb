require 'page-object'

class Login
  include PageObject

  page_url "URL for my bank"

  text_field(:name, :id => 'user_id')
  text_field(:name, :id => 'password')
  button(:submit, :name => 'submit')

end