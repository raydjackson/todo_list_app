class AddImportValueToItems < ActiveRecord::Migration
  def change
    add_column :items, :import_value, :integer
  end
end
