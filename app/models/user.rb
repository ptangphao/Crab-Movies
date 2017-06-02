class User < ActiveRecord::Base
  has_many :reviews
  has_many :comments
  has_many :ratings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :send_user_mail
  def send_user_mail
    UserMailer.send_enabled_message(self).deliver
  end

  def reviewer?
    self.reviewer == true
  end
end
