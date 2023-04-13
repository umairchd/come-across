class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy, :create_comment]

  def index
    @places = Place.all.reverse
  end

  def show
    @comment = Comment.new
    @food_rating = @place.ratings.food.average(:value).ceil rescue 0
    @landscape_rating = @place.ratings.landscape.average(:value).ceil rescue 0
    @people_rating = @place.ratings.people.average(:value).ceil rescue 0
    @over_all_rating = ((@food_rating + @landscape_rating + @people_rating) / 3).ceil  rescue 0

    @location_array = [ [@place.name, @place.latitude,  @place.longitude ] ]
  end

  def new
    @place = Place.new
    Rating.categories.keys.map { |c| @place.ratings.build(value: 0, category: c) }
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to @place, notice: 'Place was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @place.update(place_params)
      redirect_to @place, notice: 'Place was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @place.destroy
    redirect_to places_url, notice: 'Place was successfully destroyed.'
  end

  def create_comment
    @comment = @place.comments.build(comment_params)
    if @comment.save
      redirect_to @place
    else
      render 'new_comment'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

  def set_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:name, :date, images: [], ratings_attributes: [:category, :value])
  end
end
