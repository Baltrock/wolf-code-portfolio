class CreateWebsiteRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :website_requests do |t|
      t.string :website_name
      t.string :why_website
      t.string :website_description
      t.datetime :deadline
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
