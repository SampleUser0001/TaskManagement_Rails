class TaskmanagersController < ApplicationController
  before_action :set_taskmanager, only: %i[ show edit update destroy ]

  # GET /taskmanagers or /taskmanagers.json
  def index
    @taskmanagers = Taskmanager.all
  end

  # GET /taskmanagers/1 or /taskmanagers/1.json
  def show
  end

  # GET /taskmanagers/new
  def new
    @taskmanager = Taskmanager.new
  end

  # GET /taskmanagers/1/edit
  def edit
  end

  # POST /taskmanagers or /taskmanagers.json
  def create
    @taskmanager = Taskmanager.new(taskmanager_params)

    respond_to do |format|
      if @taskmanager.save
        format.html { redirect_to @taskmanager, notice: "Taskmanager was successfully created." }
        format.json { render :show, status: :created, location: @taskmanager }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @taskmanager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taskmanagers/1 or /taskmanagers/1.json
  def update
    respond_to do |format|
      if @taskmanager.update(taskmanager_params)
        format.html { redirect_to @taskmanager, notice: "Taskmanager was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @taskmanager }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @taskmanager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taskmanagers/1 or /taskmanagers/1.json
  def destroy
    @taskmanager.destroy!

    respond_to do |format|
      format.html { redirect_to taskmanagers_path, notice: "Taskmanager was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taskmanager
      @taskmanager = Taskmanager.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def taskmanager_params
      params.expect(taskmanager: [ :title, :memo, :status ])
    end
end
