class Image < ApplicationRecord
  include Paperclip::Glue
  has_attached_file :url, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :url, content_type: /\Aimage\/.*\z/
  validates_attachment_presence :url
  validates_attachment_size :url, :less_than => 2.megabytes
  belongs_to :article, optional: true
  validates :headline, presence: true
  validates :ordering, presence: true

  default_scope { order(ordering: :asc) }

  def increase_like
    self.likes += 1
  end

end