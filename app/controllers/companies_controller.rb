class CompaniesController < ApplicationController
    def index
        @companies = Company.all
    end

    def show
        @company = Company.find(params[:id])
    end

    def new
        @company = Company.new
    end

    def create
        #@company = Company.new(params["company"])
        @company = Company.new(params.require(:company).permit(:name, :city, :state))
        @company.save
        redirect_to "/companies"

    end

end
