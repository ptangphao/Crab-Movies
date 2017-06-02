require 'rails_helper'

describe User do
  let(:user) {User.create({
    email: "koala@koala.com"
    })}
  it "sends an email" do
    current_count = ActionMailer::Base.deliveries.count
    user.send_user_mail
    expect(ActionMailer::Base.deliveries.count).to eq (current_count + 1)
  end
end
