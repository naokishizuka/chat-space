class TopController < ApplicationController
  def index
    @message = Message.new
  end
end
