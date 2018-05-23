class ToppagesController < ApplicationController
  def index
    @index = Item.order('updated_at DESC')
  end
end
