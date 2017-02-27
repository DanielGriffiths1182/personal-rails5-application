module ApplicationHelper

  def full_title(page_title = '')
    base_title = "Ruby on Rails Nokogiri Book Scraper, HTTParty Artist IDentifier, and ToDo List Analyzer"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
