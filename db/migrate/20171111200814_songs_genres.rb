class SongsGenres < ActiveRecord::Migration[5.1]
  def change
  	create_table :songs_genres, :id => false do |t|
  		t.integer :song_id
  		t.integer :genre_id
  	end
  end
end
