class Release < ActiveRecord::Base
  validates :name, presence: true
  validates :abbreviation, presence: true
  validates :count, presence: true
end
