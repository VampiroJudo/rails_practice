class SectionsController < ApplicationController
  ddef index
    @section = Section.sorted
  end

  def show
    @section= Section.find(params[:id])
  end

  def new
    @section= Section.new({:name => "Default"})
  end

  def edit
    @section= Section.find(params[:id])
    if @sectionupdate_attribute(section_params)
      flash[:notice] = "Section updated succesfully."
      redirect_to(:action => 'show', :id => @sectionid)
    else
      render('edit')
    end
  end

  def create
    @section= Section.new({:name => 'Default'})
    if @sectionsave
      flash[:notice] = 'Section created successfully.'
      redirect_to(:action => 'index')
    else
      render('new')
    end    
  end

  def update
    @section= Section.find(params[:id])
    if @sectionupdate_attribute(section_params)
      flash[:notice] = 'Section updated successfully.'
      redirect_to(:action => 'show', :id => @sectionid)
    else
      render('edit')
    
  end

  def delete
    @section= Section.find(params[:id])
  end

  def destroy
    section= Section.find(params[:id]).destroy
    flash[:notice] = "Section destroyed successfully."
    redirect_to(:action => 'index')
    
  end
  private

end
