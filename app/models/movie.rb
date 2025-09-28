class Movie < ActiveRecord::Base
  def self.all_ratings
    ['G', 'PG', 'PG-13', 'R']
  end

  def self.with_rating(ratings)
    if ratings.present?
      where(rating: ratings)
    else
      all
    end
  end
end


