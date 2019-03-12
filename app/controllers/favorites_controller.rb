# frozen_string_literal: true

class FavoritesController < ProtectedController
  before_action :set_favorite, only: %i[show update destroy]

  # GET /favorites
  def index
    @favorites = current_user.all

    render json: @favorites
  end

  # GET /favorites/1
  def show
    render json: @favorite
  end

  # POST /favorites
  def create
    @favorite = current_user.favorites.new(favorite_params)

    if @favorite.save
      render json: @favorite, status: :created, location: @favorite
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /favorites/1
  def update
    if @favorite.update(favorite_params)
      render json: @favorite
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favorites/1
  def destroy
    @favorite.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_favorite
    @favorite = current_user.favorites.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def favorite_params
    params.require(:favorite).permit(:user_id, :movie_id)
  end
end
