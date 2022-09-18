class Characters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :image_url
      t.string :actor
      t.integer :age
      t.string :bio
      t.integer :tv_show_id
      t.timestamps
    end
  end
end
