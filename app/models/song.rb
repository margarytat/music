class Song < ApplicationRecord
	has_and_belongs_to_many :genres, :join_table => :songs_genres

	def GetGenres
		self.genres.collect(&:name).join(', ')
	end

	def self.searchByGenre(search)
		if search 
			results = Song.joins(:genres).where('lower(genres.name) LIKE ?', "%#{search.downcase}%")
			return results
		else
			return Song.all
		end			
	end

	def self.searchByName(search)
		if search
			results = Song.where('lower(name) LIKE ?', "%#{search.downcase}%")
		else
			return Song.all
		end
	end
end


