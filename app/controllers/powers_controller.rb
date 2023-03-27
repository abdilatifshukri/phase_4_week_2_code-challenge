class PowersController < ApplicationController

    def index
        powers = Power.all
        render json: powers
    end

    def show
        power = Power.find_by(id: params[:id])

        if power
            render json: power 
        elsif !power
            render json: { error: "Power not found" }, status: :not_found
        end

    end

    def update 

        power = Power.find_by(id: params[:id])

        if power
            if power.update(power_params)
                render json: power
            else
                render json: { errors: power.errors.full_messages }, status: :unprocessable_entity
            end
        else
            render json: { error: "Power not found" }, status: :not_found
        end
        
    end

    private


    def power_params
        params.permit(:description)
    end
  

end
