class SubjectsController < ApplicationController
  


  def index
    @subjects = Subject.order("position ASC")
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
  end

  def edit
  end

  def delete
  end
end
