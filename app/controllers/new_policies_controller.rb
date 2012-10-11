class NewPoliciesController < ApplicationController
  # GET /new_policies
  # GET /new_policies.json
  def index
    @new_policies = NewPolicy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @new_policies }
    end
  end

  # GET /new_policies/1
  # GET /new_policies/1.json
  def show
    @new_policy = NewPolicy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @new_policy }
    end
  end

  # GET /new_policies/new
  # GET /new_policies/new.json
  def new
    @new_policy = NewPolicy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @new_policy }
    end
  end

  # GET /new_policies/1/edit
  def edit
    @new_policy = NewPolicy.find(params[:id])
  end

  # POST /new_policies
  # POST /new_policies.json
  def create
    @new_policy = NewPolicy.new(params[:new_policy])

    respond_to do |format|
      if @new_policy.save
        format.html { redirect_to @new_policy, notice: 'New policy was successfully created.' }
        format.json { render json: @new_policy, status: :created, location: @new_policy }
      else
        format.html { render action: "new" }
        format.json { render json: @new_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /new_policies/1
  # PUT /new_policies/1.json
  def update
    @new_policy = NewPolicy.find(params[:id])

    respond_to do |format|
      if @new_policy.update_attributes(params[:new_policy])
        format.html { redirect_to @new_policy, notice: 'New policy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @new_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_policies/1
  # DELETE /new_policies/1.json
  def destroy
    @new_policy = NewPolicy.find(params[:id])
    @new_policy.destroy

    respond_to do |format|
      format.html { redirect_to new_policies_url }
      format.json { head :no_content }
    end
  end
end
