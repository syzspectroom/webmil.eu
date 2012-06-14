
class WorkController < ApplicationController
  def index
   @title = 'Works'
   @works = Work.order("created_at asc").all
  end

  def show
   @work = Work.find_by_slug(params[:id])
  end
end
