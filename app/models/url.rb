class Url < ActiveRecord::Base
  validates :url_location, presence: true

  before_save :shorten_url

  def shorten_url
    if self.short_url.nil?
      self.short_url = rand(1..5)
    end
  end

end
