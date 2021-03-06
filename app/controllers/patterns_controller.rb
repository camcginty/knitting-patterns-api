# frozen_string_literal: true

class PatternsController < OpenReadController
  before_action :set_pattern, only: %i[show update destroy]

  # GET /patterns
  def index
    @patterns = Pattern.all

    render json: @patterns
  end

  # GET /patterns/1
  def show
    render json: Pattern.find(params[:id])
  end

  # POST /patterns
  def create
    @pattern = current_user.patterns.build(pattern_params)

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
    @pattern = current_user.patterns.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def pattern_params
    params.require(:pattern).permit(:title, :x, :y)
  end
end
