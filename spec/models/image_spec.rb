require 'rails_helper'

RSpec.describe Image, type: :model do

<<<<<<< HEAD
  before do
    @img1 = create(:image)
  end

  it { should validate_presence_of(:headline) }
  it { should validate_presence_of(:imgorder) }
  it { should validate_presence_of(:imglikes) }

  it { should belong_to(:article) }

  it 'Increase number of likes' do
    expect(@img1.increase_like).to eq 21
  end

  it 'Return number of likes now' do
    expect(@img1.show_like).to eq 20
  end
=======
  let(:image) { create(:image) }

  context 'Test validations' do
    it { should validate_presence_of(:headline) }
    it { should validate_presence_of(:ordering) }
    it 'Test likes default' do
      expect(image.likes.is_a?(Integer)).to eq true
    end
  end

  context 'Test associations' do
    it { should belong_to(:article) }
  end

  context 'Test methods' do
    it 'Increase number of likes' do
      before_increase_like = image.likes
      image.increase_like
      expect(image.likes).to eq (before_increase_like + 1)
    end

  end

>>>>>>> 47a325a... Fix some code which Mr Binh reviewed except cant ignore idea
end