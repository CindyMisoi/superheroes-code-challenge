class HeroPowersController < ApplicationController
    # rescue
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    # CREATE /hero_powers
    def create
        hero_powers = HeroPower.create!(hero_powers_params)
        render json: hero_powers.hero, status: :created, serializer: HeroPowerSerializer
    end

    # private
    # strong params
    def hero_powers_params
        params.permit(:strength,:power_id,:hero_id)
    end
    # validation errors
    def render_unprocessable_entity_response
        render json: {error: "validation errors"}, status: :unprocessable_entity
    end
end
