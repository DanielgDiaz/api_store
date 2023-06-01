require 'rails_helper'

describe "Rutas de producto" do
    it 'Ruta POST de product' do
        expect(post: '/v1/products').to route_to(
            format: 'json',
            controller: 'v1/products',
            action: 'create'
        )
    end
    it 'Ruta PUT de product' do
        expect(put: '/v1/products/1').to route_to(
            format: 'json',
            controller: 'v1/products',
            action: 'update',
            id: '1'
        )
    end
    it 'Ruta index products' do
        expect(get: '/v1/products').to route_to(
            format: 'json',
            controller: 'v1/products',
            action: 'index'
        )
    end
    
end
