require 'test_helper'

class Ipay88ModuleTest < Test::Unit::TestCase
  include ActiveMerchant::Billing::Integrations

  def test_return_method
    assert_instance_of Ipay88::Return, Ipay88.return('name=cody')
  end

  def test_service_url
    assert_equal "https://www.mobile88.com/epayment/enquiry.asp", Ipay88.service_url
  end

  def test_entry_url
    assert_equal "https://www.mobile88.com/epayment/entry.asp", Ipay88.entry_url
  end

  def test_merchant_key
    Ipay88.merchant_key = "ipay88merchkey"
    assert_equal "ipay88merchkey", Ipay88.merchant_key
  end
end
