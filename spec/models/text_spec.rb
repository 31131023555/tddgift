require 'rails_helper'

RSpec.describe Text, type: :model do

<<<<<<< HEAD
  before do
    @text1 = create(:text)
  end

  it { should validate_presence_of(:headline) }
  it { should validate_presence_of(:textorder) }
  it { should validate_presence_of(:textlikes) }

  it { should belong_to(:article) }

  it 'Increase number of likes' do
    expect(@text1.increase_like).to eq 11
  end

  it 'Return number of likes now' do
    expect(@text1.show_like).to eq 10
=======
  let(:text) { create(:text) }

  context 'Test validations' do
    it { should validate_presence_of(:headline) }
    it { should validate_presence_of(:ordering) }
    it 'Test likes default' do
      expect(text.likes.is_a?(Integer)).to eq true
    end
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
>>>>>>> 47a325a... Fix some code which Mr Binh reviewed except cant ignore idea
  end

end