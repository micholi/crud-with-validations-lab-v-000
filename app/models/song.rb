class Song < ActiveRecord::Base
  validates :title, presence: true, uniqueness: {scope: [:release_year, :artist_name]}
  validates :released, inclusion: {in: [true, false]}
  validates :release_year, presence: true unless :released == false, numericality: {only_integer: true, less_than_or_equal_to: Time.now.year}
  #validates :release_year, numericality: {only_integer: true, less_than_or_equal_to: Time.now.year}
  validates :artist_name, presence: true
end
