class PowersController < ApplicationController
    # rescue
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
 
    # get all /powers
    def index
        powers = Power.all
        render json: powers
    end
    # get powers/{id}
    def show
        power = find_power
        render json: power
    end 

    # PATCH /powers/{id}
    def update
        power = find_power
        power.update!(power_params)
        render json: power
    end

    # private
    private
    def render_not_found_response
        render json: {error:"Power not found"}, status: :not_found
    end
    # validation error
    def render_unprocessable_entity_response
        render json: {error: "validation errors"}, status: :unprocessable_entity
    end
    # find
    def find_power
        Power.find(params[:id])
    end
    # strong params
    def power_params
        params.permit(:name, :description)
    end
end
