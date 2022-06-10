class ApplicationController < ActionController::API

  rescue_from ActiveRecord::RecordInvalid, with: :record_invalid_res
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_res

  private

  def record_invalid_res(invalid)
    render json: { errors: invalid.message }, status: :unprocessable_entity
  end

  def record_not_found_res(invalid)
    render json: { error: "#{invalid.model} not found" }, status: :not_found
  end

end
