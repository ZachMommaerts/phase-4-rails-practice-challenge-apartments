class TenantsController < ApplicationController

    def index
        render json: Tenant.all
    end

    def show
        render json: Tenant.find(params[:id])
    end

    def create
        render json: Tenant.create!(tenant_params)
    end

    def update
        tenant = Tenant.find(params[:id])
        tenant.update!(tenant_params)
        render json: tenant
    end

    def destroy
        tenant = Tenant.find(params[:id])
        tenant.destroy
        head :no_content
    end

    private

    def tenant_params
        params.permit(:name, :age)
    end
end
