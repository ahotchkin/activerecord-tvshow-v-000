require 'pry'

class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    # Show.where(self.highest_rating).take
    Show.order(rating: :desc)
    binding.pry
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.where(self.lowest_rating).take
  end
end
