class Api::V1::CannedResponsesController < Api::BaseController
  before_action :fetch_canned_response, only: [:update, :destroy]

  def index
    render json: canned_responses
  end

  def create
    @canned_response = current_account.canned_responses.new(canned_response_params)
    @canned_response.save!
    render json: @canned_response
  end

  def update
    @canned_response.update_attributes!(canned_response_params)
    render json: @canned_response
  end

  def destroy
    @canned_response.destroy
    head :ok
  end

  private

  def fetch_canned_response
    @canned_response = current_account.canned_responses.find(params[:id])
  end

  def canned_response_params
    params.require(:canned_response).permit(:short_code, :content)
  end

  def canned_responses
    if params[:search]
      current_account.canned_responses.where('short_code ILIKE ?', "#{params[:search]}%")
    else
      current_account.canned_responses
    end
  end
end
