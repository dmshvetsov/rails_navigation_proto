class AdminController < ApplicationController
  def index
  end

  def show
    @page = 
    @pages_tree = Page.hash_tree
  end

end
