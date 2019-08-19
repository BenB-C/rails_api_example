class Quote < ApplicationRecord
  validates :author, presence: true
  validates :content, presence: true

  def self.search(terms)
    where("author ILIKE ?", "%#{terms}%")
  end
end
