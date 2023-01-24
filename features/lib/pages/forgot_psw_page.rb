# frozen_string_literal: true

class ForgotPswPage
  include ForgotPswPage_module

  def initialize(browser)
    @browser = browser
    @data = DataRecord.new
  end

  def forgotPswUrl
    return @browser.url
  end

  def enterUserName(data_set)
    userNameTxt.send_keys @data.data_record("forgotPsw")["#{data_set}"]["username"]
  end

  def clickCancelResetPswBtn
    cancelResetPswBtn.click
  end

  def clickResetPswBtn
    resetPswBtn.click
  end

  def getResetPswMsg
    return resetPswMsg.text
  end
end
