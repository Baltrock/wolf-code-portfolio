class CreateCompletedWebsites < ActiveRecord::Migration[7.0]
  def change
    create_table :completed_websites do |t|
      t.string :website_name
      t.string :website_description
      t.integer :completion_period
      t.references :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
