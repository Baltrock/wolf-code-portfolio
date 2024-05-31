class CreateComplaintForms < ActiveRecord::Migration[7.0]
  def change
    create_table :complaint_forms do |t|
      t.string :complaint_title
      t.string :complaint_description
      t.timestamp :time_of_event
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
