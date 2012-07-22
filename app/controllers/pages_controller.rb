
class PagesController < ApplicationController
  def home
  	@page_title = '- Home'
  end

  def studio
  	@page_title = '- Studio'
  end
end
