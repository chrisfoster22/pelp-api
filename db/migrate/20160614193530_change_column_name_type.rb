class ChangeColumnNameType < ActiveRecord::Migration
  def change
    remove_column :markers, :type, :string
    add_column :markers, :marker_type, :string
  end
end
