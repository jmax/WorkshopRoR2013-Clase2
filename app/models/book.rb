class Book < ActiveRecord::Base
  belongs_to :author
  has_and_belongs_to_many :categories
  accepts_nested_attributes_for :categories

  validates :title, :author, presence: true

  validate :at_least_one_category_is_present

protected
  def at_least_one_category_is_present
    if categories.empty?
      errors.add(:base, "You must select at least one category")
    end
  end
end
