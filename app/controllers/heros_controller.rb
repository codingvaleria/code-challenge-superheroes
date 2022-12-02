class HerosController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def index 
        render json: Hero.all, status: :ok
    end

    def show
        hero = Hero.find(params[:id])
        render json: hero, serializer: HeroandpowerSerializer, status: :ok
    end

    private
    def record_not_found
        render json: {error: "Hero not found"}, status: 404
    end

end
