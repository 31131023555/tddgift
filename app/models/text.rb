class Text < ApplicationRecord
  belongs_to :article, optional: true
  validates :headline, presence: true
<<<<<<< HEAD
  validates :textorder, presence: true
  validates :textlikes, presence: true

  default_scope { order('textorder') }

  def increase_like
    self.textlikes.next
  end

  def show_like
    self.textlikes
  end
=======
  validates :ordering, presence: true

  default_scope { order('ordering') }

  def increase_like
    self.likes += 1
  end

>>>>>>> 47a325a... Fix some code which Mr Binh reviewed except cant ignore idea
end