class CreateUserInformations < ActiveRecord::Migration[7.0]
  def change
    create_table :user_informations do |t|
      t.string :name
      t.string :email
      t.string :bio
      # t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
