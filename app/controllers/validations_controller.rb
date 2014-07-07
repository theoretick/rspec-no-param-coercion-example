
class ValidationsController < ApplicationController
  respond_to :json

  def phone
    render :json => {number_class: params[:number].class.to_s }
  end
end
