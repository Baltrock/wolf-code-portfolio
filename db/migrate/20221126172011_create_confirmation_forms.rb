class CreateConfirmationForms < ActiveRecord::Migration[7.0]
  def change
    create_table :confirmation_forms do |t|
      t.string :project_assigned
      t.string :website_assessment
      t.string :overall_comment
      t.timestamp :deadline_possibility
      t.integer :price_offer
      t.references :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
