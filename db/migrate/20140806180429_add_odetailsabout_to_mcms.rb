class AddOdetailsaboutToMcms < ActiveRecord::Migration
  def change
    add_column :mcms, :saboutus, :text
    add_column :mcms, :payment, :text
    add_column :mcms, :shippingp, :text
    add_column :mcms, :returnE, :text
    add_column :mcms, :canccelation, :text
    add_column :mcms, :complaints, :text
  end
end
