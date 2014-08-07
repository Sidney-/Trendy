class AddcontactToMcms < ActiveRecord::Migration
  def change
    add_column :mcms, :imail, :string
    add_column :mcms, :iaddress, :string
    add_column :mcms, :iphone, :string
  end
end
