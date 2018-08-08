# frozen_string_literal: true

class SquaresController < ApplicationController
  before_action :set_square, only: %i[show update destroy]

  # GET /squares
  def index
    @squares = Square.all

    render json: @squares
  end

  # GET /squares/1
  def show
    render json: @square
  end

  # POST /squares
  def create
    @square = Square.new(square_params)

    if @square.save
      render json: @square, status: :created
    else
      render json: @square.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /squares/1
  def update
    if @square.update(square_params)
      render json: @square
    else
      render json: @square.errors, status: :unprocessable_entity
    end
  end

  # DELETE /squares/1
  def destroy
    @square.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_square
    @square = Square.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def square_params
    params.require(:square).permit(:on)
  end
end
