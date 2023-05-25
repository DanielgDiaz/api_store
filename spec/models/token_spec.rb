require 'rails_helper'

RSpec.describe Token, type: :model do
  describe "validacion modelo token" do
    subject { build(:token) } 
    it "Validar token presente" do
      should validate_presence_of(:token) 
    end
    it "Validar user_id presente" do
      should validate_presence_of(:user_id)
    end
    it "Validar expires_at presente" do
      should validate_presence_of(:expires_at)
    end
    it "Validar relacion con user" do
      should belong_to(:user)
    end
    
  end
  
end
