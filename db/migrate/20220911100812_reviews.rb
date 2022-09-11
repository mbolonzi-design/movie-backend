class Reviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :content
      t.string :rating
      t.string :movie_id
      t.string :user_id
      t.timestamps
    end
  end
end
