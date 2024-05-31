class WebsiteRequest < ApplicationRecord
  belongs_to :user
  has_one :confirmation_form
end
