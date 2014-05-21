class RepostController < ApplicationController
  protect_from_forgery :except => [:create]

  def create
    logger.info "posting"
    logger.info params
    RepostUrl.all.each do |r|
      PostToUrl.perform({url: r.url, params: repost_params})
    end
  end

  private
    def repost_params
      params.require(:repost)
    end
end
