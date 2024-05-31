class CreateSiteUpdates < ActiveRecord::Migration[7.0]
  def change
    create_table :site_updates do |t|
      t.string :update_title
      t.string :update_description
      t.timestamp :update_schedule
      t.references :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
