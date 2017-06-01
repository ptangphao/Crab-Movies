require 'rails_helper'

describe User do
  let(:user) {User.create({
    email: "koala@koala.com"
    })}
  it "sends an email" do
    expect(user.send_user_mail).to change {ActionMailer::Base.deliveries.count}.by(1)
  end
end
