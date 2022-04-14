class PlantTagsController < ApplicationController
  # before_action :set_plant

  def new
    # @plant already available
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    @plant = Plant.find(params[:plant_id])

    # @plant_tag = PlantTag.new(plant_tag_params)
    # @plant_tag.plant = @plant

    # @plant_tag.save

    # Customize create action, to accomodate adding multiple tags at the same time
    # Params that we receive from multiple select is:  "plant_tag"=>{"tag_id"=>["2", "5", "3"]}

    params.require(:plant_tag)[:tag_id].each do |tag_id|
      PlantTag.create!(plant: @plant, tag_id: tag_id)
    end

    redirect_to @plant.garden
  end

  private
    def set_plant
      @plant = Plant.find(params[:plant_id])
    end

    def plant_tag_params
      params.require(:plant_tag).permit(:tag_id)
    end
end
