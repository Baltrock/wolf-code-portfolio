class CreateSkillLists < ActiveRecord::Migration[7.0]
  def change
    create_table :skill_lists do |t|
      t.string :skill
      t.references :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
