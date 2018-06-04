class User < ApplicationRecord
  has_many :teachers
  has_many :teachings, through: :teachers

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]



 # def self.from_omniauth(auth)
 #     where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
 #       user.provider = auth.provider
 #       user.uid = auth.uid
 #       user.name = auth.info.name
 #       user.oauth_token = auth.credentials.token
 #       user.oauth_expires_at = Time.at(auth.credentials.expires_at)
 #       user.password = Devise.friendly_token[0,20]
 #       user.save!
 #     end
 #   end


 def self.from_omniauth(auth)
     where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
       user.name = auth.info.name
       user.email = auth.info.email
       user.password = Devise.friendly_token[0,20]
     end
   end
  #
  #  def self.from_omniauth(access_token)
  #   data = access_token.info
  #   user = User.where(email: data['email']).first
  #   unless user
  #       user = User.create(name: data['name'],
  #          email: data['email'],
  #          password: Devise.friendly_token[0,20]
  #       )
  #   end
  #   user
  # end
end
