class Api::V1::SuperherosController < ApplicationController
  # respond_to :xml, :json

  def index
    @superheros = Superhero.all
    # respond_with(@superheros)
  end

  def show
    @superhero = Superhero.find(params[:id])
    # respond_with(@superhero)
  end

  def create
    @superhero = Superhero.create(:name => params[:name],
:ability => params[:ability], :first_name => params[:first_name], :last_name => params[:last_name], :gender => params[:gender], :occupation => params[:occupation], :city => params[:city], :publisher => params[:publisher])
   render 'show'

  end
end