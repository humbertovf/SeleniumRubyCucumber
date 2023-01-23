# frozen_string_literal: true

module LeavePage_module

  def leaveSideMenu
    @browser.element(xpath: "//span[text()='Leave']")
  end
end
