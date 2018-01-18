require 'rails_helper'

RSpec.describe Text, type: :model do
  it { should validate_presence_of(:headline) }
  it { should validate_presence_of(:textorder) }
  it { should validate_presence_of(:textlikes) }



  it { should belong_to(:article) }
end