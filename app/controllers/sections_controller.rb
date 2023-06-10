class SectionsController < ApplicationController
  before_action :set_section, only: %i[show]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @sections = Section.all
    cookies[:user_name] = "Aurelia"
  end

  def show
    @products = Product.all
  end

  private

  # Si on veut rajouter update, create... :
  # def section_params
  #   params.require(:section).permit(:title, :photo)
  # end

  def set_section
    @section = Section.find(params[:id])
  end
end
