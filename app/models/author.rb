class Author < ActiveRecord::Base
  has_many :books, dependent: :destroy

  validates :fullname, presence: true
end
