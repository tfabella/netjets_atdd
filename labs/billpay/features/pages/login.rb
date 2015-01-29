require 'page-object'

class Login
  include PageObject

  page_url "www.chase.com"

  text_field(:name, :id => 'user_id')
  text_field(:name, :id => 'password')
  button(:submit, :name => 'submit')

end