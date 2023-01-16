# frozen_string_literal: true

class DashboardPage
  include DashboardPage_module

  def initialize(browser)
    @browser = browser
  end

  def getDashboardLabelText
    return dashboardLabel.text
  end
end
