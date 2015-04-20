class UrlsController < ApplicationController
  def new
    @url = Url.new
  end

  def create
    @url = Url.create(url_params)
  end

  def find
    url = Url.find_by_id(params[:id])
    if url
      redirect_to url.url
    end
  end

  private

  def url_params
    params.require(:url).permit(:url)
  end
end
