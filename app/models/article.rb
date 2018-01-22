class Article < ApplicationRecord
  has_many :texts, dependent: :destroy
  has_many :images, dependent: :destroy
  validates :title, presence: true
  validates :publishing, presence: true

  def is_published
    self.publishing < DateTime.now
  end

  def increase_like
    self.likes += 1
  end

end