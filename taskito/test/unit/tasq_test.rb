require 'test_helper'

class TasqTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Tasq.new.valid?
  end
end
