# frozen_string_literal: true

class LoginPage
  include LoginPage_module

  def initialize(browser)
    @browser = browser
    @data = Data.new
  end

  def navigate_to
    @browser.goto HOME_PAGE
  end

  def enterUserName(record)
    userNameTxt.send_keys @data.data_record("login")["#{record}"]["username"]
  end

  def enterPassword(record)
    passwordTxt.send_keys @data.data_record("login")["#{record}"]["password"]
  end

  def clickLoginBtn
    loginBtn.click
  end

  def getInvalidCredentialsLabel
    return invalidCredentialsLabel.text
  end

  def getRequiredFieldsErrorMsg
    return requiredFieldsErrorMsg
  end

  def clickForgotPasswordLink
    forgotPasswordLink.click
  end
end
