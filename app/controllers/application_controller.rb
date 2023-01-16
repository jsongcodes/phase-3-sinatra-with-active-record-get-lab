class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/bakeries' do
    bakeries = Bakery.all
    bakeries.to_json
  end

  get '/bakeries/:id' do
    bakery = Bakery.find(params[:id])
    bakery.to_json(include: :baked_goods)
  end

  get '/baked_goods/by_price' do
    baked_goods_price = BakedGood.baked_goods_price
    baked_goods_price.to_json
  end

  get '/baked_goods/most_expensive' do
    most_expensive = BakedGood.most_expensive
    most_expensive.to_json
  end

end
