class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :user_information, dependent: :destroy
  has_many :website_requests, dependent: :destroy
  has_many :complaint_forms, dependent: :destroy
  has_many :cancellation_forms, dependent: :destroy
  has_and_belongs_to_many :confirmation_forms
end
