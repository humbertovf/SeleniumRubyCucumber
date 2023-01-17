Given(/^a user lands on login page$/) do

  @loginPage = LoginPage.new(@browser)
  @forgotPswPage = ForgotPswPage.new(@browser)
  @dashboardPage = DashboardPage.new(@browser)
  @loginPage.navigate_to
end

When(/^a user enters data (.*) needed in the Login form$/) do |data_set|
  @loginPage.enterUserName(data_set)
  @loginPage.enterPassword(data_set)
  @loginPage.clickLoginBtn

end

Then(/^Validation message (.*) should be displayed$/) do |validation_message|

  @expectedLoginMsg = validation_message

  case validation_message
  when "Dashboard"
    actualLoginMsg = @dashboardPage.getDashboardLabelText
    puts "This is the actual msg - #{actualLoginMsg}"
    puts "This is the expected msg - #{@expectedLoginMsg}"
    assert_true(@expectedLoginMsg.eql?(actualLoginMsg), "[Error] - Actual - (#{actualLoginMsg}) is not matching with Expected - (#{@expectedLoginMsg})")
  when "Invalid credentials"
    invalidLoginMsg = @loginPage.getInvalidCredentialsLabel
    puts invalidLoginMsg
    assert_true(@expectedLoginMsg.eql?(invalidLoginMsg), "[Error] - Actual - (#{invalidLoginMsg}) is not matching with Expected - (#{@expectedLoginMsg})")
  when "Required"
    requiredFieldsMsg = @loginPage.getRequiredFieldsErrorMsg
    puts requiredFieldsMsg.class

    if !requiredFieldsMsg.empty? # si el arreglo no esta vacio entra al siguiente bloque de codigo
      for element in requiredFieldsMsg
        assert_true(validation_message.eql?(element.text), "[Error] - Actual - (#{element.text}) is not matching with Expected - (#{validation_message})")
      end
    end
  end
end