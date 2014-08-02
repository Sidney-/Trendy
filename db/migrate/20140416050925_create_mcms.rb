class CreateMcms < ActiveRecord::Migration
  def change
    create_table :mcms do |t|
      t.text :body
      t.text :topbannerimage1
      t.text :topbannerimage2

      t.timestamps
    end
  end
end
