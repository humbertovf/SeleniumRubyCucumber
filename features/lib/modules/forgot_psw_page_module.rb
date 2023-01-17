# frozen_string_literal: true

module ForgotPswPage_module

  def userNameTxt
    @browser.text_field(name: "username")
  end

  def resetPswBtn
    @browser.button(value: "Reset Password")
  end

  def cancelResetPswBtn
    @browser.button(css: "button.orangehrm-forgot-password-button--cancel")
  end

  def resetPswMsg
    @browser.element(css: "h6.orangehrm-forgot-password-title")
  end
end
