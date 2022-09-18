class TvShows < ActiveRecord::Migration[6.1]
  def change
    create_table :tv_shows do |t|
      t.string :title
      t.string :image_url
      t.integer :year
      t.string :plot
      t.integer :rating
      t.string :characters

      t.timestamps
    end
  end
end
