class AddressesController < ApplicationController
  def create
    @company = Company.find(params[:company_id])
    @address = @company.addresses.create(address_params)
    redirect_to company_path(@company)
  end

  private
  def address_params
    params.require(:address).permit(:address)
  end
end
