class PagesController < ApplicationController
  def index
    @pages = Page.sorted
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new({:name => "Default"})
  end

  def edit
    @page = Page.find(params[:id])
    if @page.update_attribute(page_params)
      flash[:notice] = "Page updated succesfully."
      redirect_to(:action => 'show', :id => @page.id)
    else
      render('edit')
    end
  end

  def create
    @page = Page.new({:name => 'Default'})
    if @page.save
      flash[:notice] = 'Page created successfully.'
      redirect_to(:action => 'index')
    else
      render('new')
    end    
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attribute(page_params)
      flash[:notice] = 'Page updated successfully.'
      redirect_to(:action => 'show', :id => @page.id)
    else
      render('edit')
    
  end

  def delete
    @page = Page.find(params[:id])
  end

  def destroy
    page = Page.find(params[:id]).destroy
    flash[:notice] = "Page destroyed successfully."
    redirect_to(:action => 'index')
    
  end
  private

end
