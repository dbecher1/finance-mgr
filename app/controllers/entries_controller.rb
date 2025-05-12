class EntriesController < ApplicationController
  before_action :set_tally
  before_action :set_entry, only: %i[ show ]
  def index
    @entries = Entry.all
  end
  def new
    @entry = Entry.new
  end
  def create
    @entry = Entry.new(entry_params)
    @entry.tally_id = @tally.id
    if @entry.save
      redirect_to @tally, notice: "Entry was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end
  def show
  end
  private
  def set_tally
    @tally = Tally.find(params[:tally_id])
  end
  def set_entry
    @entry = Entry.find(params[:id])
  end
  def entry_params
    params.require(:entry).permit(:name, :price, :tally, :purchased_on)
  end
end
