class Movie < ActiveRecord::Base
  def self.all_ratings
    ['G', 'PG', 'PG-13', 'R']
  end

  def self.with_ratings(ratings)
    if ratings.present?
      where(rating: ratings)
      
    else
      all
    end
  end

  def self.sorted_by(type)
    if type == "title"
      order(:title)
    elsif type == "release_date"
      order(:release_date)
    else
      all
    end
  end
end


