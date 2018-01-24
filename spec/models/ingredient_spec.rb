require 'rails_helper'

RSpec.describe Ingredient, type: :model do

  describe 'db' do
    context 'columns' do
      it { is_expected.to have_db_column(:bacon).of_type(:integer) }
      it { is_expected.to have_db_column(:cheese).of_type(:integer) }
      it { is_expected.to have_db_column(:meat).of_type(:integer) }
      it { is_expected.to have_db_column(:salad).of_type(:integer) }
    end
  end
end