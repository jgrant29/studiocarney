class WelcomeController < ApplicationController
  def index
    @designs = Design.all.order("created_at DESC")
    @design_group = @designs.limit(2)
  end

  def about
  end
end
