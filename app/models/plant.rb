class Plant < ApplicationRecord
  belongs_to :garden
  has_many :plant_tags, dependent: :destroy
  has_many :tags, through: :plant_tags

  validates :name, :image_url, presence: true

  # validates :movie_id, uniqueness: { scope: :list_id }
end

# Bookmark.create(movie_id: 1, list_id: 1)

# Bookmark.create(movie_id: 1, list_id: 2)
# Bookmark.create(movie_id: 1, list_id: 3)
# Bookmark.create(movie_id: 1, list_id: 4)
# Bookmark.create(movie_id: 1, list_id: 5)

# Bookmark.create(movie_id: 2, list_id: 1)

# Bookmark.create(movie_id: 2, list_id: 2)
# Bookmark.create(movie_id: 2, list_id: 2)
