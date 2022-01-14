class ApartmentsController < ApplicationController

    def index
        render json: Apartment.all
    end

    def show
        render json: Apartment.find(params[:id])
    end

    def create
        render json: Apartment.create!(apartment_params)
    end

    def update
        apartment = Apartment.find(params[:id])
        apartment.update!(apartment_params)
        render json: apartment
    end

    def destroy
        apartment = Apartment.find(params[:id])
        apartment.destroy
        head :no_content
    end

    private

    def apartment_params
        params.permit(:number)
    end

end
