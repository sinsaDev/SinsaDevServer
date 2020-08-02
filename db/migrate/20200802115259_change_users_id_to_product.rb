class ChangeUsersIdToProduct < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :users_id, :user_id
    change_column_default :products, :deleted, "deleted"
    change_column_default :products, :status, 0
    change_column_default :product_options, :status, 0
    change_column_default :product_videos, :deleted, "deleted"
    Product.reset_column_information
  end
end
