require 'rails_helper'

RSpec.describe Store, type: :model do
  describe 'Validaciones del modelo store' do
    subject { build(:store) }
    it 'validar name presente' do
      should validate_presence_of(:name)
    end 
    it 'Validar relacion con owner' do
      should have_one(:owner)
    end
    it 'Validar relacion con employees' do
      should have_many(:employees)
    end
  end
end
