require_relative '../spec_helper'

describe Equipment do
  let(:equipment) { build :equipment }

  describe "#associations" do
    it { should have_many :exercises }
    it { should have_many :equipment_products }
    it { should have_many :products }
  end

  describe '#random_products' do
  	let(:result) { equipment.random_products }
    let(:products) { Object.new }

    before do
      mock(equipment).products.times(8) { products }
      mock(products).first(order: 'RANDOM()').times(8) { '8 RANDOM PRODUCTS' }
    end

    it 'returns 8 random equipments products' do
      result.should eq eight_random_products
    end
  end

  def eight_random_products
  	8.times.inject([]) { |arr, n| arr << '8 RANDOM PRODUCTS' }
  end
end