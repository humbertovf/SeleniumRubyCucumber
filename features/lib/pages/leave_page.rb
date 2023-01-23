# frozen_string_literal: true

class LeavePage
  include LeavePage_module

  def initialize(browser)
    @browser = browser
    @data = Data.new
  end

  def clickLeaveMenu
    leaveSideMenu.click
  end
end
