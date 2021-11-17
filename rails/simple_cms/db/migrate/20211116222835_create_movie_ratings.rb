class CreateMovieRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_ratings do |t|
      t.integer :imbd
      t.integer :audience_rating

      t.timestamps
    end
  end
end
