class ResetReviewAndConfirmationForm < ActiveRecord::Migration[7.0]
  def change
    drop_table :confirmation_forms
    drop_table :reveiw_forms
  end
end
