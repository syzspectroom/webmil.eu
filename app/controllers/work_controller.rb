
class WorkController < ApplicationController
  def index
   @page_title = '- ' + t(:works)
   @works = Work.order("`order` desc").all

  end

  def show
   @work = Work.find_by_slug(params[:id])
   @page_title = '- '+@work.name
  end
end
