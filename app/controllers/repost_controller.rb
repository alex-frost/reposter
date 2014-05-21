class RepostController < ApplicationController
  def create
    RepostUrl.all.each do |r|
      PostToUrl.perform({url: r.url, params: repost_params})
    end
  end

  private
    def repost_params
      params.require(:repost)
    end
end
