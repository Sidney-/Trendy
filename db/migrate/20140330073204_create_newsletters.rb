class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.text :name
      t.text :mail

      t.timestamps
    end
  end
end
