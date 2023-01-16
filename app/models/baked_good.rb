class BakedGood < ActiveRecord::Base
  # add association macro here
  belongs_to :bakery

  def self.baked_goods_price
    self.all.order(price: :desc)
  end

  def self.most_expensive
    self.all.order(price: :desc).first
  end
end
