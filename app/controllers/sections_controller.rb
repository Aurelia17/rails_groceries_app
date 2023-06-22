class SectionsController < ApplicationController
  before_action :set_section, only: %i[show]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @sections = Section.includes([photo_attachment: :blob]).all.order(:title)
    search
  end

  def show
    @products = Product.includes([photo_attachment: :blob]).all.order(:title)
    search
  end

  private

  # Si on veut rajouter update, create... :
  # def section_params
  #   params.require(:section).permit(:title, :photo)
  # end

  def set_section
    @section = Section.find(params[:id])
  end

  def search
    if params[:query].present?
      redirect_to products_path(query: params[:query]) and return
    end
  end
end
