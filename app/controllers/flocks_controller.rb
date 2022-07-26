class FlocksController < ApplicationController
  before_action :set_flock, only: %i[ show edit update destroy ]

  def index
    @flocks = Flock.all
    @title = 'All Flocks'
  end

  def report
    @search = ReportSearch.new(params[:search])
    @flocks = @search.flock_scope
    @title = 'Flocks Report'
  end

  def show
    @title = "Flock #{@flock.id}"
  end

  def new
    @flock = Flock.new
    @title = "New Flock"
  end

  def edit
    @title = "Edit Flock #{@flock.id}"
  end

  def create
    @flock = Flock.new(flock_params)

    if @flock.save
      redirect_to flock_url(@flock), notice: "Flock was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @flock.update(flock_params)
      redirect_to flock_url(@flock), notice: "Flock was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @flock.destroy
     redirect_to flocks_url, notice: "Flock was successfully destroyed."
  end

  private
    def set_flock
      @flock = Flock.find(params[:id])
    end

    def flock_params
      params.require(:flock).permit(:batch_id, :date_in, :retirement_date, :source, :flock_stored, :initial_stock, :died_stock, :notes, :status, :type_id)
    end
end
