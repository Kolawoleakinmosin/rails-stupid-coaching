require 'test_helper'

# test file
class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :headless_chrome # Update this line
end
