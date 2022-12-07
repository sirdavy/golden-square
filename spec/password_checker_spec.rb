require "password_checker"

RSpec.describe PasswordChecker do
  it "checks password length is 8+ characters" do
    examp_password = PasswordChecker.new
    result = examp_password.check("magarine")
    expect(result).to eq true
  end

  it "returns error for password <8 characters" do
    examp_password = PasswordChecker.new
    # examp_password.check("book")
    expect { examp_password.check("book") }.to raise_error "Invalid password, must be 8+ characters."
  end
end
