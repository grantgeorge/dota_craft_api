class HeroesController < ApplicationController
  before_action :set_hero, only: [:show, :update, :destroy]

  # GET /heroes
  # GET /heroes.json
  def index
    @heroes = Hero.all

    render json: @heroes
  end

  # GET /heroes/1
  # GET /heroes/1.json
  def show
    render json: @hero
  end

  # POST /heroes
  # POST /heroes.json
  def create
    @hero = Hero.new(hero_params)

    if @hero.save
      render json: @hero, status: :created, location: @hero
    else
      render json: @hero.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /heroes/1
  # PATCH/PUT /heroes/1.json
  def update
    @hero = Hero.find(params[:id])

    if @hero.update(hero_params)
      head :no_content
    else
      render json: @hero.errors, status: :unprocessable_entity
    end
  end

  # DELETE /heroes/1
  # DELETE /heroes/1.json
  def destroy
    @hero.destroy

    head :no_content
  end

  private

    def set_hero
      @hero = Hero.find(params[:id])
    end

    def hero_params
      params.require(:hero).permit(:name, :description, :base_movement, :base_str, :base_int, :base_agi, :str_per_level, :int_per_level, :agi_per_level, :base_min_damage, :base_max_damage, :base_armor, :day_sight_range, :night_sight_range, :attack_range, :missle_speed)
    end
end
