require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper


  def scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    binding.pry
  end

  def scrape_profile_page
  end

end
