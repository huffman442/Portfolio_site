class WelcomeController < ApplicationController
  def index
    @articles = Article.all
    @articles_displayed = Array.new
    @articles.reverse.each do |article|
      @articles_displayed << article
      break if @articles_displayed.length == 3
    end
  end

  def resume
  end

  def workexamples
  end
end
