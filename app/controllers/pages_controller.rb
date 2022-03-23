class PagesController < ApplicationController
  def about
  end

  def contact
    @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]
  end

  def home
  end
end
