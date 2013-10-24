class FacultiesController < ApplicationController
  before_action :require_login, except: [:index, :show]
  before_action :set_faculty, only: [:show, :edit, :update, :destroy]

  # GET /faculties
  # GET /faculties.json
  def index
    @faculties = Faculty.all
  end

  # GET /faculties/1
  # GET /faculties/1.json
  def show
  end

  # GET /faculties/new
  def new
    @faculty = Faculty.new
  end

  # GET /faculties/1/edit
  def edit
  end

  # POST /faculties
  # POST /faculties.json
  def create
    @faculty = Faculty.new(faculty_params)

    respond_to do |format|
      if @faculty.save
        format.html { redirect_to @faculty, notice: 'Faculty was successfully created.' }
        format.json { render action: 'show', status: :created, location: @faculty }
      else
        format.html { render action: 'new' }
        format.json { render json: @faculty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faculties/1
  # PATCH/PUT /faculties/1.json
  def update
    respond_to do |format|
      if @faculty.update(faculty_params)
        format.html { redirect_to @faculty, notice: 'Faculty was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @faculty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faculties/1
  # DELETE /faculties/1.json
  def destroy
    if @faculty.departments.empty?
      @faculty.destroy
      respond_to do |format|
        format.html { redirect_to faculties_url }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to :back, :alert => 'Can not delete faculty. Faculty has departments.' }
        format.json { head :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faculty
      @faculty = Faculty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faculty_params
      params.require(:faculty).permit(:name)
    end
end
