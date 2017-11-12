class Genre < ApplicationRecord
	has_and_belongs_to_many :songs, :join_table => :songs_genres
end
