class PagesController < FrontendController

  def home
  	@page_title = "- #{t(:home)}"
  end

  def studio
  	@page_title = "- #{t(:studio)}"
  end
end
