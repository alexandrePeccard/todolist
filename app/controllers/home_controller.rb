class HomeController < ApplicationController
  def index
    @tasks = Task.all
    @categories = Category.all

    respond_to do |format|
      format.html
      format.js { render js: 'javascript' }
    end
  end
end
