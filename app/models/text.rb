class Text < ApplicationRecord
  belongs_to :article, optional: true
  validates :headline, presence: true
  validates :textorder, presence: true
  validates :textlikes, presence: true

  default_scope { order('textorder') }

  def increase_like
    self.textlikes.next
  end

  def show_like
    self.textlikes
  end
end