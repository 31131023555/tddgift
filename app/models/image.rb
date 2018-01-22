class Image < ApplicationRecord
  belongs_to :article, optional: true
  validates :headline, presence: true
  validates :ordering, presence: true

  default_scope { order(ordering: :asc) }

  def increase_like
    self.likes += 1
  end

end