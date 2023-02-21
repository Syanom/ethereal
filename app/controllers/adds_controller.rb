class AddsController < ApplicationController
  def index
    @adds = Add.all
  end

  def show
    @add = Add.find(params[:id])
  end
end
