
class WorkController < ApplicationController
  def index
   @page_title = '- Works'
   @works = Work.order("created_at asc").all

  end

  def show
   @work = Work.find_by_slug(params[:id])
   @page_title = '- '+@work.name
  end
end
