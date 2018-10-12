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
    student_collection = []
    student_cards = doc.css('.student-card')
    student_cards.each do |student|
      hash = {:name => "", :location => "", :profile_url => ""}
      hash[:name] = student.css('.student-name').text
      hash[:location] = student.css('.student-location').text
      hash[:profile_url] = student.css('a')[0]['href']
      student_collection << hash
    end
    return student_collection
  end

  def self.scrape_profile_page
  end

end
