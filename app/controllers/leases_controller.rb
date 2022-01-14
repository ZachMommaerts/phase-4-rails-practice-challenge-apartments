class LeasesController < ApplicationController

    def create
        render json: Lease.create!(lease_params)
    end

    def destroy
        lease = Lease.find(params[:id])
        lease.destroy
        head :no_content
    end

    private

    def lease_params
        params.permit(:tenant_id, :apartment_id, :rent)
    end
end
