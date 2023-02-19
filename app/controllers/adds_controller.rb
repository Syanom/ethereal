class AddsController < ApplicationController
  def index
    @adds = Add.all
  end
end