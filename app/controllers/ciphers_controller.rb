class CiphersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def caesars
    @caesar = Caesar.new(params[:offset].to_i)
    @result = params[:encode] == '1' ? @caesar.encode(params[:text]) : @caesar.decode(params[:text])
    render json: { text: @result }
  end
end
