class PostToUrl
  def go(attr)
    HTTParty.post(attr[:url], attr[:params])
  end
end
