# frozen_string_literal: true

module DashboardPage_module

  def dashboardLabel
    @browser.element(css: ".oxd-text.oxd-text--h6.oxd-topbar-header-breadcrumb-module")
  end
end
