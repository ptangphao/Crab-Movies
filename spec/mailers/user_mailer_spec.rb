require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  let(:user){ User.new({email: 'earlsabal@gmail.com'})}
  let(:mail){UserMailer.send_enabled_message(user)}
  it "renders the subject" do
    expect(mail.subject).to eq 'Welcome to Crab Movies!!!'
  end

  it "renders the correct recipient email" do
    expect(mail.to[0]).to eq "earlsabal@gmail.com"
  end
end
