class Article < ApplicationRecord
  has_many :texts
  has_many :images
  validates :title, presence: true
  validates :likes, presence: true


  def is_published
    return self.created_at < DateTime.now
  end

  def publish
    self.to_s
  end

  def increase_like
    self.likes.next
  end

  def show_likes
    self.likes
  end

  def show_info
    self.texts + self.images
  end

end