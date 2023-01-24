# frozen_string_literal: true

module AdminPage_module

  def adminSideMenu
    @browser.element(xpath: "//span[text()='Admin']")
  end

  def searchBtn
    @browser.button(xpath: "//button[.=' Search ']")
  end
end
