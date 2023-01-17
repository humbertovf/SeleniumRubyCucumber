When(/^a user clicks on forgot password link$/) do
  # @loginPage = LoginPage.new(@browser)
  @loginPage.clickForgotPasswordLink
end

And(/^request reset password (error|code) page (?:is|should be) displayed$/) do |page|

  puts "This is the page #{page}"
  # sleep(2000)
  case page
  when "code"
    expected = "requestPasswordResetCode"
    assert_true(@forgotPswPage.forgotPswUrl.include?(expected), "[Error] - The expected URL is /#{expected}, but the actual URL is #{@forgotPswPage.forgotPswUrl}")
  when "error"

    puts "SI ESTA ENTRANDO EN EL CASE CORRECTO"
    expected = "requestResetPassword"
    assert_true(@browser.url.include?(expected), "[Error] - The expected URL is /#{expected}, but the actual URL is #{@forgotPswPage.forgotPswUrl}")
  else
    "[Error] - This option is not been validated."
  end

end

And(/^user enters user name (.*) and click on reset password button$/) do |data_set|
  @forgotPswPage.enterUserName(data_set)
  @forgotPswPage.clickResetPswBtn
end

Then(/^(.*) message should be displayed$/) do |expected_message|

  puts "This is the MESSAGE to validate - #{expected_message}"

  case expected_message
  when "Reset Password link sent successfully"
    actualMsg = @forgotPswPage.getResetPswMsg
    assert_true(expected_message.eql?(actualMsg), "[Error] - Actual - (#{actualMsg}) is not matching with Expected - (#{expected_message})")
  when "Required"
    actualMsg = @loginPage.getRequiredFieldsErrorMsg
    assert_true(!actualMsg.empty?, "[Error] - The element could not be found!")
    for message in actualMsg # este es un HTMLElementCollection, por eso se recorre usando un loop
      assert_true(message.text.eql?(expected_message), "[Error] - Actual - (#{message.text}) is not matching with Expected - (#{expected_message})")
    end
  when "Obligatorio"
    actualMsg = @loginPage.getRequiredFieldsErrorMsg
    assert_true(!actualMsg.empty?, "[Error] - The element could not be found!")
    for message in actualMsg # este es un HTMLElementCollection, por eso se recorre usando un loop
      assert_true(message.text.eql?(expected_message), "[Error] - Actual - (#{message.text}) is not matching with Expected - (#{expected_message})")
    end
  else
    puts "[Error] - Expected message /#{expected_message}/ is not been validated."
  end
end