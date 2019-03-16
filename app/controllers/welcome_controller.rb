class WelcomeController < ApplicationController
  def index
    @articles = Article.all
  end

  def resume
  end
end
