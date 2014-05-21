class PostToUrl
  include HTTParty

  def self.perform(attr)
    base_uri attr[:url]
    post('/', attr[:params])
  end
end
