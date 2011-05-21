class TasqsController < ApplicationController
  def index
    @tasqs = Tasq.all
  end
  
  def show
    @tasq = Tasq.find(params[:id])
  end
  
  def new
    @tasq = Tasq.new
  end
  
  def create
    @tasq = Tasq.new(params[:tasq])
    @tasq.user_id=current_user.id 
    @tasq.status_id=1
    if @tasq.save                                       
      
      #-- replace these user_ids by the one sent by the autocomplete ajax:
      worker = UserTasq.new(:tasq_id=>@tasq.id,:user_id=>"2",:role=>"w")    # --- Worker Role
      reviewer = UserTasq.new(:tasq_id=>@tasq.id,:user_id=>current_user.id,:role=>"r")  # --- Reviewer Role
      worker.save
      reviewer.save
      
      flash[:notice] = "Successfully created tasq."
      redirect_to @tasq
    else
      render :action => 'new'
    end
  end
  
  def edit
    @tasq = Tasq.find(params[:id])
  end
  
  def update
    @tasq = Tasq.find(params[:id])
    if @tasq.update_attributes(params[:tasq])
      flash[:notice] = "Successfully updated tasq."
      redirect_to @tasq
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @tasq = Tasq.find(params[:id])
    @tasq.destroy
    flash[:notice] = "Successfully destroyed tasq."
    redirect_to tasqs_url
  end
end
