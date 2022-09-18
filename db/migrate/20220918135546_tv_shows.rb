class TvShows < ActiveRecord::Migration[6.1]
  def change
    create_table :tv_shows do |t|
      t.string :title
      t.integer :year
      t.text :plot
      t.integer :rating
      t.text :review
      t.timestamps
    end
  end
end
