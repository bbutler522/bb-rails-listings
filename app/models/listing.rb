class Listing < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  
  validates :title, presence: true
  validates :description, presence: true
end
