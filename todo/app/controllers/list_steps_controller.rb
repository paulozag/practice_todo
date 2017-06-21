class ListStepsController < ApplicationController
  before_action :set_list
  before_action :set_list_step, only: [:show, :edit, :update, :destroy]

  # GET /list_steps
  # GET /list_steps.json
  def index
    @list_steps = ListStep.all
  end

  # GET /list_steps/1
  # GET /list_steps/1.json
  def show
  end

  # GET /list_steps/new
  def new
    @list_step = @list.list_steps.new
  end

  # GET /list_steps/1/edit
  def edit

  end

  # POST /list_steps
  # POST /list_steps.json
  def create
    @list_step = @list.list_steps.new(list_step_params)

    respond_to do |format|
      if @list_step.save
        format.html { redirect_to @list, notice: 'List step was successfully created.' }
        format.json { render :show, status: :created, location: @list_step }
      else
        format.html { render :new }
        format.json { render json: @list_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_steps/1
  # PATCH/PUT /list_steps/1.json
  def update
    respond_to do |format|
      if @list_step.update(list_step_params)
        format.html { redirect_to @list, notice: 'List step was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_step }
      else
        format.html { render :edit }
        format.json { render json: @list_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_steps/1
  # DELETE /list_steps/1.json
  def destroy
    @list_step.destroy
    respond_to do |format|
      format.html { redirect_to @list, notice: 'List step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_step
      @list_step = ListStep.find(params[:id])
    end

    def set_list
      @list = List.find(params[:list_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_step_params
      params.require(:list_step).permit(:description, :completed, :list_id)
    end
end
