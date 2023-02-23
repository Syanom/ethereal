class AddsController < ApplicationController
  def index
    @adds = Add.all.where(active: true)
    @search = params
    @adds = @adds.where(for_rent: true) if @search[:for_rent] == 'true' && @search[:for_sale] != 'true'
    @adds = @adds.where(for_sale: true) if @search[:for_sale] == 'true' && @search[:for_rent] != 'true'
    case @search[:rooms]
    when '1+1'
      @adds = @adds.where(rooms: 1)
    when '2+1'
      @adds = @adds.where(rooms: 2)
    when '3+1'
      @adds = @adds.where(rooms: 3)
    when '4+1++'
      @adds = @adds.where(rooms: 4..1000)
    end
    @adds = @adds.order(price_tl: :asc) if @search[:price] == '↑'
    @adds = @adds.order(price_tl: :desc) if @search[:price] == '↓'
  end

  def show
    @add = Add.find(params[:id])
  end
end
