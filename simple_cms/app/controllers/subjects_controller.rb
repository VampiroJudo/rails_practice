class SubjectsController < ApplicationController
  


  def index
    @subjects = Subject.sorted
  end

  def show
  end

  def new
  end

  def edit
  end

  def delete
  end
end
