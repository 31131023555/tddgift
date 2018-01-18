class Image < ApplicationRecord
  belongs_to :article, optional: true
  validates :headline, presence: true
  validates :imgorder, presence: true
  validates :imglikes, presence: true

  default_scope { order(imgorder: :desc) }
end