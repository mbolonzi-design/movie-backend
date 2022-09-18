class Movies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :image_url
      t.integer :year
      t.string :plot
      t.integer :rating
      t.string :review
      t.timestamps
    end
  end
end
