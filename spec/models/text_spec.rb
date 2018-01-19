require 'rails_helper'

RSpec.describe Text, type: :model do

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
  end

end