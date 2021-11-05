class HomeController < ApplicationController

  before_action :authenticate_user!
  def index   #"action" cada una tiene una vista, una funcion?
    @usuario = current_user
  end

  def new
  end

  def create
  end

  def show
  end

  def destroy
  end



end
