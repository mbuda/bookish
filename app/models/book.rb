class Book < ActiveRecord::Base
  belongs_to :author
  validates :firstname, presence: true
  validates :lastname, presence: true
end
