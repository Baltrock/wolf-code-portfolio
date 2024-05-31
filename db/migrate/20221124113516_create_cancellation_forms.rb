class CreateCancellationForms < ActiveRecord::Migration[7.0]
  def change
    create_table :cancellation_forms do |t|
      t.string :reason_for_cancellation
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
