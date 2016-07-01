class WelcomeController < ApplicationController
  def index
    @designs = Design.all.order("created_at DESC")
    @design_group = @designs.order("created_at DESC").limit(2).last
  end

  def about
  end
end
