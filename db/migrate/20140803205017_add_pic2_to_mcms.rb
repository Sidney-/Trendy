class AddPic2ToMcms < ActiveRecord::Migration
  def change
    add_column :mcms, :pic2, :string
    add_column :mcms, :pic3, :string
  end
end
