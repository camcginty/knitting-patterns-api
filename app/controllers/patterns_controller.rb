# frozen_string_literal: true

class PatternsController < ApplicationController
  before_action :set_pattern, only: %i[show update destroy]

  # GET /patterns
  def index
    @patterns = Pattern.all

    render json: @patterns
  end

  # GET /patterns/1
  def show
    render json: @pattern
  end

  # POST /patterns
  def create
    @pattern = Pattern.new(pattern_params)

    if @pattern.save
      render json: @pattern, status: :created
    else
      render json: @pattern.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /patterns/1
  def update
    if @pattern.update(pattern_params)
      render json: @pattern
    else
      render json: @pattern.errors, status: :unprocessable_entity
    end
  end

  # DELETE /patterns/1
  def destroy
    @pattern.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pattern
    @pattern = Pattern.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def pattern_params
    params.require(:pattern).permit(:title,
                                    :square0,
                                    :square1,
                                    :square2,
                                    :square3)
  end
end
