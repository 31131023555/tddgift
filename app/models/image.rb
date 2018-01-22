class Image < ApplicationRecord
  belongs_to :article, optional: true
  validates :headline, presence: true
<<<<<<< HEAD
  validates :imgorder, presence: true
  validates :imglikes, presence: true

  default_scope { order(imgorder: :asc) }

  def increase_like
    self.imglikes.next
  end

  def show_like
    self.imglikes
  end
=======
  validates :ordering, presence: true

  default_scope { order(ordering: :asc) }

  def increase_like
    self.likes += 1
  end

>>>>>>> 47a325a... Fix some code which Mr Binh reviewed except cant ignore idea
end