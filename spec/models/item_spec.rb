require 'rails_helper'

RSpec.describe Item, type: :model do
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to belong_to :list }

  describe "#to_s" do
  	subject { FactoryBot.build(:item) }
  
  	it "returns name" do
  	  expect(subject.to_s).to eq(subject.name)
  	end
  end
end
