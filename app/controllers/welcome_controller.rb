class WelcomeController < ApplicationController
  def index
    @designs = Design.all
  end

  def about
  end
end
