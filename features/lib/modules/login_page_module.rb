# frozen_string_literal: true

module LoginPage_module

  HOME_PAGE = "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login"

  def userNameTxt
    @browser.text_field(name: "username")
  end

  def passwordTxt
    @browser.text_field(name: "password")
  end

  def loginBtn
    @browser.button(css: ".oxd-button.oxd-button--medium.oxd-button--main.orangehrm-login-button")
  end

  def forgotPasswordLink
    @browser.element(css: ".oxd-text.oxd-text--p.orangehrm-login-forgot-header")
  end

  def invalidCredentialsLabel
    # @browser.element(css: ".oxd-text.oxd-text--p.oxd-alert-content-text")
    @browser.element(css: "p.oxd-alert-content-text")
    #@browser.element(css: ".oxd-alert.oxd-alert--error")
    # return @browser.alert.text
  end

  def requiredFieldsErrorMsg
    @browser.elements(css: "span.oxd-input-field-error-message")
  end

  def forgotPasswordLink
    @browser.element(css: "p.orangehrm-login-forgot-header")
  end

end
