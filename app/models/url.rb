require "URI"

class Url < ActiveRecord::Base

  REDIRECTABLE = /\A(http|https):\/\/(www.)?(.*)\z/
  validates :url, presence: true

  before_validation :make_sure_url_is_http

  def make_sure_url_is_http
    self.url = "http://" + url unless url =~ REDIRECTABLE
  end

end
