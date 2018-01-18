class Text < ApplicationRecord
  belongs_to :article, optional: true
  validates :headline, presence: true
  validates :textorder, presence: true
  validates :textlikes, presence: true

  default_scope { order('textorder') }
end