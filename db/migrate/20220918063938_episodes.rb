class Episodes < ActiveRecord::Migration[6.1]
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :image_url
      t.integer :year
      t.string :plot
      t.integer :rating
      t.integer :tv_show_id

      t.timestamps
    end
  end
end
