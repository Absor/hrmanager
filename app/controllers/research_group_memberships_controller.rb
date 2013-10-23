class ResearchGroupMembershipsController < ApplicationController
  before_action :set_research_group_membership, only: [:show, :edit, :update, :destroy]

  # GET /research_group_memberships
  # GET /research_group_memberships.json
  def index
    @research_group_memberships = ResearchGroupMembership.all
  end

  # GET /research_group_memberships/1
  # GET /research_group_memberships/1.json
  def show
  end

  # GET /research_group_memberships/new
  def new
    @research_group_membership = ResearchGroupMembership.new
  end

  # GET /research_group_memberships/1/edit
  def edit
  end

  # POST /research_group_memberships
  # POST /research_group_memberships.json
  def create
    @research_group_membership = ResearchGroupMembership.new(research_group_membership_params)

    respond_to do |format|
      if @research_group_membership.save
        format.html { redirect_to @research_group_membership, notice: 'Research group membership was successfully created.' }
        format.json { render action: 'show', status: :created, location: @research_group_membership }
      else
        format.html { render action: 'new' }
        format.json { render json: @research_group_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /research_group_memberships/1
  # PATCH/PUT /research_group_memberships/1.json
  def update
    respond_to do |format|
      if @research_group_membership.update(research_group_membership_params)
        format.html { redirect_to @research_group_membership, notice: 'Research group membership was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @research_group_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /research_group_memberships/1
  # DELETE /research_group_memberships/1.json
  def destroy
    @research_group_membership.destroy
    respond_to do |format|
      format.html { redirect_to research_group_memberships_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_research_group_membership
      @research_group_membership = ResearchGroupMembership.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def research_group_membership_params
      params.require(:research_group_membership).permit(:research_group_id, :employee_id)
    end
end
