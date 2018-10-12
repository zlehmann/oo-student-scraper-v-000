require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  attr_accessor :name, :location, :profile_url

  def initialize
  end

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    student = []
    student_cards = doc.css('.student-card')
    student_cards.each do |student|
      hash = {:name => "", :location => "", :profile_url => ""}
      hash[:name] =
      hash[:location] =
      hash[:profile_url] = student.css('a')[0]['href']
      binding.pry
      student << hash
    end
    return student
  end

  def self.scrape_profile_page
  end

end
