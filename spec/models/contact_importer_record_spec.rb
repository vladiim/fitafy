require 'spec_helper'

describe ContactImporterRecord do
  context 'db' do
    it { should have_db_column(:name) }
  end
end