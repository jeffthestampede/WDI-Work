class PagesController < ApplicationController

  before_filter :authenticate_user!, :except => [:public, :home]
  
  def home
  end

  def public
  end

  def private


  end

end
