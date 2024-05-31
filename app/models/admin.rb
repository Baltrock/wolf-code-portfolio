class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :confirmation_forms, dependent: :destroy
  has_many :completed_websites, dependent: :destroy
  has_many :skill_lists, dependent: :destroy
end
