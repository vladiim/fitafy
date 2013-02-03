require 'spec_helper'
# icon - link to amazon icon

describe Product do
  let(:subject) { Product.new }

  it { should have_many(:equipment_products) }
  it { should have_many(:equipments) }
  it { should have_db_column(:retailer) }
  it { should have_db_column(:name) }
  it { should have_db_column(:image) }
  it { should have_db_column(:price) }
  it { should have_db_column(:analytics_link) }
  it { should have_db_column(:affiliate_link) }

  describe '#create_analytics_link' do
  end
end