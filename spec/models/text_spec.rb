require 'rails_helper'

RSpec.describe Text, type: :model do

  let(:text) { create(:text) }

  context 'Test validations' do
    it { should validate_presence_of(:headline) }
    it { should validate_presence_of(:ordering) }
  end

  context 'Test associations' do
    it { should belong_to(:article) }
  end

  context 'Test methods' do
    it 'Increase number of likes' do
      before_increase_like = text.likes
      text.increase_like
      expect(text.likes).to eq (before_increase_like + 1)
    end
  end

end