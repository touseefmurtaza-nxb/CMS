class WelcomeController < ApplicationController
  def index
  	@theme = Theme.first
  	gon.link_color = @theme.link_color
  end
end
