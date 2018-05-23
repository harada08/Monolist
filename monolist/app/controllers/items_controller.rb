class ItemsController < ApplicationController
  before_action :require_user_logged_in
  
  def new
    @items = []
    
    @keyword = params[:keyword]
    if @keyword.present? 
      results = RakutenWebService::Ichiba::Item.search({
        keyword: @keyword,
        imageFlag: 1,
        hits: 20,
      })
      
      results.each do |result|
        #扱い易いようにItemとしてインスタンスを作成する（保存）はしない
        item = Item.find_or_initialize_by(read(result))
        @items << item
       end
       
       def show
         @item = Item.find(params[:id])
         @want_users = @item.want_users
       end
    end
  end
end

  
