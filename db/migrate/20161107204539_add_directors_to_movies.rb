class AddDirectorsToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :director_id, :integer
  end
end
