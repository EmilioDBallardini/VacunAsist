class HomeController < ApplicationController

  before_action :authenticate_user!
  def index   #"action" cada una tiene una vista, una funcion?
  end
end
