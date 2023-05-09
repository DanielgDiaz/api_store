require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validaciones del modelo user' do
    subject { build(:owner) }
    it 'validar email presente' do
      should validate_presence_of(:email)
    end 

    it 'validar password presente' do
      should validate_presence_of(:password_digest)
    end 

    it 'validar age presente' do
      should validate_presence_of(:age)
    end 

    it 'validar type presente' do
      should validate_presence_of(:type)
    end 

    it 'validar email unico' do
      should validate_uniqueness_of(:email)
    end 

    it 'validar email no incorrecto' do
      should_not allow_value("test").for(:email)
    end 

    it 'validar age numero entero' do
      should validate_numericality_of(:age).only_integer
    end 

    it 'validar edad mayor o igual a 18' do
      should validate_numericality_of(:age).is_greater_than_or_equal_to(18)
    end 

    it 'validar edad menor o igual a 100' do
      should validate_numericality_of(:age).is_less_than_or_equal_to(100)
    end 

    it 'validar solo se puede crear employee u owner' do 
      should validate_inclusion_of(:type).in_array(%w[Employee Owner])
    end

    it 'Validar relacion con store' do
      should belong_to(:store)
    end

  end
end
