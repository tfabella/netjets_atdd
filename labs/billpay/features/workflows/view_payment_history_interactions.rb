include PageObject::PageFactory

module ViewPaymentHistoryInteractions

  def open_bank_homepage
    visit_page Login
  end

  def submit_valid_login
    on_page Login do |page|
      page.name = 'user_id'
      page.name = 'password'
      page.submit
    end
    sleep 2
  end

  def view_payment_history
    on_page PaymentHistory do |page|
      page.view_payment_history
    end
  end

  def gather_payment_history
    page = on_page PaymentHistory
    results = page.response
    results
  end

  def sort_by_date
    page = on_page PaymentHistoryByDate
    results = page.response_by_date
    results
  end

end

World ViewPaymentHistoryInteractions