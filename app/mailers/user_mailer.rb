class UserMailer < ApplicationMailer
  default from: "crabbypaperclip@gmail.com"
  def send_enabled_message(user)
    @user = user
    mail(:to => user.email, :subject => "Welcome to Crab Movies!!!")
  end
  # def send_new_user_message(user)
  #   @user = user
  #   mail(:to => 'crabbypaperclip@gmail.com', :subject => "New User created please review and enable.")
  # end
end
