class CiphersController < ApplicationController
  def caesars
    @caesar = Caesar.new(params[:offset])
    @result = params[:encode] ? Caesar.encode(params[:text]) : Caesar.decode(params[:text])
    render json: { text: @result }
  end
end
