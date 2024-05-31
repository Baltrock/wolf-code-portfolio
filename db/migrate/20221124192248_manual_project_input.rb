class ManualProjectInput < ActiveRecord::Migration[7.0]
  def change
    add_column :confirmation_forms, :project_assignment, :string
  end
end
