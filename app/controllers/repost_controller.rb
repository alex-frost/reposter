class RepostController < ApplicationController
  protect_from_forgery :except => [:create]

  def create
    logger.info "posting"
    logger.info params
    RepostUrl.all.each do |r|
      PostToUrl.perform({url: r.url, params: params})
    end
  end

end
