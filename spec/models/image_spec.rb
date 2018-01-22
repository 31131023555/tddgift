require 'rails_helper'

RSpec.describe Image, type: :model do

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

end