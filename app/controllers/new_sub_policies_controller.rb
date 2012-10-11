class NewSubPoliciesController < ApplicationController
  # GET /new_sub_policies
  # GET /new_sub_policies.json
  def index
    @new_sub_policies = NewSubPolicy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @new_sub_policies }
    end
  end

  # GET /new_sub_policies/1
  # GET /new_sub_policies/1.json
  def show
    @new_sub_policy = NewSubPolicy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @new_sub_policy }
    end
  end

  # GET /new_sub_policies/new
  # GET /new_sub_policies/new.json
  def new
    @new_sub_policy = NewSubPolicy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @new_sub_policy }
    end
  end

  # GET /new_sub_policies/1/edit
  def edit
    @new_sub_policy = NewSubPolicy.find(params[:id])
  end

  # POST /new_sub_policies
  # POST /new_sub_policies.json
  def create
    @new_sub_policy = NewSubPolicy.new(params[:new_sub_policy])

    respond_to do |format|
      if @new_sub_policy.save
        format.html { redirect_to @new_sub_policy, notice: 'New sub policy was successfully created.' }
        format.json { render json: @new_sub_policy, status: :created, location: @new_sub_policy }
      else
        format.html { render action: "new" }
        format.json { render json: @new_sub_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /new_sub_policies/1
  # PUT /new_sub_policies/1.json
  def update
    @new_sub_policy = NewSubPolicy.find(params[:id])

    respond_to do |format|
      if @new_sub_policy.update_attributes(params[:new_sub_policy])
        format.html { redirect_to @new_sub_policy, notice: 'New sub policy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @new_sub_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_sub_policies/1
  # DELETE /new_sub_policies/1.json
  def destroy
    @new_sub_policy = NewSubPolicy.find(params[:id])
    @new_sub_policy.destroy

    respond_to do |format|
      format.html { redirect_to new_sub_policies_url }
      format.json { head :no_content }
    end
  end
end
