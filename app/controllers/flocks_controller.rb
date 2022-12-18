class FlocksController < ApplicationController
  before_action :set_flock, only: %i[ show edit update destroy ]

  def index
    @flocks = Flock.order(:batch_id).page(params[:page])
    # @search = Flock.new(params[:search])
    # @flocks = @search.flock_scope

    @title = 'All Flocks'

    @f = Flock.ransack(params[:q])
    respond_to do |format|
      format.html
      format.csv { send_data @f.result.to_csv }
    end
  end

  def import 
    file = params[:file]
    return redirect_to flocks_path, notice: "Only CSV please" unless file.content_type == "text/csv"

    file = File.open(file)
    csv = CSV.parse(file, headers: true, col_sep: ";")
    
    csv.each do |row| 
      flock_hash = {}
      flock_hash[:batch_no] = row["batch_no"]
      flock_hash[:date_in] = row["date_in"]
      flock_hash[:retirement_date] = row["retirement_date"]
      flock_hash[:source] = row["source"]
      flock_hash[:initial_stock] = row["initial_stock"]
      flock_hash[:died_stock] = row["died_stock"]
      flock_hash[:sold_stock] = row["sold_stock"]
      flock_hash[:notes] = row["notes"]
      flock_hash[:status] = row["status"]

      Flock.create(flock_hash)
    end
    redirect_to flocks_path, notice: "Flocks imported"
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
      params.require(:flock).permit(:batch_id, :date_in, :retirement_date, :source, :initial_stock, :died_stock, :notes, :status, :sold_stock)
    end
end
