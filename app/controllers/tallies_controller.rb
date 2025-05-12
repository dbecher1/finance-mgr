class TalliesController < ApplicationController
  before_action :set_tally, only: [ :edit, :update, :show ]
  def index
    @tallies = current_user.tallies if current_user
  end

  def show
    @total_entry_sum = @tally.entries.sum(:price)
  end

  def new
    @tally = Tally.new
  end

  def create
    @tally = Tally.new(tally_params)
    @tally.user_id = current_user.id
    if @tally.save
      redirect_to tally_path(@tally)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @tally.update(tally_params)
      redirect_to tally_path(@tally)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def set_tally
    @tally = Tally.find(params[:id])
  end

  def tally_params
    params.require(:tally).permit(:name, :balance)
  end
end
