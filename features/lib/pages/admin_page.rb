# frozen_string_literal: true

class AdminPage
  include AdminPage_module

  def initialize(browswer)
    @browser = browswer
    @data = DataRecord.new
  end

  # @browser.div(class: ".oxd-table").hashes

  def clickAdminMenu
    adminSideMenu.click
  end

  def clickSearchBtn
    searchBtn.click
  end


end
