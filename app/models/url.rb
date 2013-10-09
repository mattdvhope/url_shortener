class Url < ActiveRecord::Base
  validates :url_location, presence: true
  validates :url_location, format: {with: /\w+:\/\//, message: "not valid url"}

  before_save :shorten_url

  def shorten_url
    if self.short_url == nil
      self.short_url = rand(1..100)
    end
  end

end
