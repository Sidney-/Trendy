class AddPic1ToMcms < ActiveRecord::Migration
  def change
    add_column :mcms, :pic1, :string

  end
end
