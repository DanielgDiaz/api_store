require 'rails_helper'
RSpec.describe V1::UsersController, type: :controller do
    describe "Inicio sesion del usuario" do
        let(:user) { create(:owner, password:'123456') }
        context "Inicio de sesion correcto" do
            before do
                post(:login,format: :json, params: {
                    user: {
                        email: user.email,
                        password: '123456'
                    }
                })
            end
            context "Status OK" do
                subject { response }
                it { is_expected.to have_http_status(:ok) }
            end
            context "Estructura respuesta login correcta" do
                subject { payload_test }
                it {is_expected.to include(:id, :email, :age, :store, :token) }
            end
            context "Estructura respuesta token correcta" do
                subject { payload_test[:token] }
                it { is_expected.to include(:id, :token, :expires_at) }

            end
            
                       
        end
        context "Inicio de sesion fallido" do
            before do
                post(:login,format: :json, params: {
                    user: {
                        email: user.email,
                        password: ''
                    }
                })
            end
            context "Status correcto (bad_request)" do
                subject { response } 
                it { is_expected.to have_http_status(:bad_request)}
            end
            context "Estructura de login correcta" do
                subject { payload_test }
                 it { is_expected.to include(:errors) }
            end
            
            
        end
        
    end
    
end