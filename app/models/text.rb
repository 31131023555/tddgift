class Text < ApplicationRecord
  belongs_to :article, optional: true
  validates :headline, presence: true
  validates :ordering, presence: true

  default_scope { order('ordering') }

  def increase_like
    self.likes += 1
  end

end