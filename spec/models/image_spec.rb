require 'rails_helper'

RSpec.describe Image, type: :model do

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
end